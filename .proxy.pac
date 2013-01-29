function FindProxyForURL(url, host) {
  if (shExpMatch(host, "*.dev")) {
    return "PROXY localhost:3000";
  }
  if (shExpMatch(host, "*.dev2")) {
    return "PROXY localhost:3001";
  }
  if (shExpMatch(host, "*.dev3")) {
    return "PROXY localhost:3000";
  }
  if(shExpMatch(host, "*t.proxylocal.com")) {
    return "PROXY localhost:3000";
  }

  return "DIRECT";
}
