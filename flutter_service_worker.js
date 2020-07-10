'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "460f54908a66a6e8f228833bb4f73c01",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.md": "68b329da9893e34099c7d8ad5cb9c940",
"manifest.json": "e63493cd4ffddab648b4ad0aca88cf8f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "80b8ea3ed88b9e86f51b3ac1f1c15b6e",
"assets/NOTICES": "8ff8df84c8384186ceab95b10fce0fcf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/assets/fonts/Exotc.ttf": "6b35e5684ca6a45975c669f510e82135",
"assets/assets/fonts/TWCen.TTF": "9b62dc86f936227b3f7b367bd0b6c05e",
"assets/assets/logo/insta.png": "097b77494452f9352630bcf79697db4d",
"assets/assets/logo/gmail.png": "828e4779415a6ad47ff7fa9d3c4a5772",
"assets/assets/logo/linkedin.png": "9e1b3303a272e5e7db87a64b8a05e705",
"assets/assets/logo/github.png": "9ae3e453b7f63a1ede272c82eed5410c",
"assets/assets/img/web1.png": "d58184b95fd2059b6fe462094d51f53c",
"assets/assets/img/ws.png": "523473954818952d454ee86946ecb897",
"assets/assets/img/pesawat1.png": "325e1f799fbb20fe6448a8d9f7eb8cd0",
"assets/assets/img/app2_2.png": "41fffedf8480d5927cc24e7986ce8c98",
"assets/assets/img/pic.png": "c8ded43906a362a2a1286e73602c1367",
"assets/assets/img/mynameis.png": "586b3bf95901470a24773e76039297e4",
"assets/assets/img/app1_1.png": "92713ba9255aa0cc8b98faf6a0256b4b",
"assets/assets/img/name2.png": "6037ef163a16bbf7057a1e30e8ac6041",
"assets/assets/img/sarah.png": "50a45720362b91d46e49a45dadfca6f7",
"assets/assets/img/winnona.png": "4a20cf6e96d51cc4bfa92398bb98b716",
"assets/assets/img/pesawat2.png": "7a995610d6f715eb9700b2a9da0a4cfc",
"assets/assets/img/app2_1.png": "c7074bb6d96bd6b054ebb356d2eef845",
"assets/assets/img/name.png": "e7158ad8505711d314e6fc23f494dce4",
"assets/assets/img/app1_3.png": "b5b778a85d32961dd53b3fb0341b1fac",
"assets/assets/img/pesawat3.png": "43fcb80092c80cc904b46979c39f00e4",
"assets/assets/img/app1_2.png": "34de8393de929b02d3d1729a8cfa827b",
"assets/assets/img/web2.png": "949db0b0abdd07cc7d1fcf54f7635aa6",
"assets/assets/img/circle.png": "3cd0724c737b8b4a05a04055f4bab1d4",
"assets/AssetManifest.json": "b94da5c8f59ea48996bbdbaba5964253",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"index.html": "a3cb012180b26a864d3d508a97a7a0c2",
"/": "a3cb012180b26a864d3d508a97a7a0c2"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');

      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }

      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message === 'downloadOffline') {
    downloadOffline();
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
