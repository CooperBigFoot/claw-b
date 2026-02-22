# claw-b

## Component Tracker

### Core

- [ ] HTTP client (reqwest wrapper, base URL, headers, retries, rate limiting)
- [ ] EIP-712 signer (order signing + L1 auth signing)
- [ ] HMAC-SHA256 L2 auth header generator
- [ ] Config / credentials loader (.env)
- [ ] Error types (API errors, auth errors, validation errors, network errors)

### Types

- [ ] Market / Event structs
- [ ] Order structs (limit, market, cancel)
- [ ] Orderbook / Price / Midpoint responses
- [ ] Trade / Position / Balance responses
- [ ] WebSocket message types

### API Methods

- [ ] Public: get_markets, get_price, get_midpoint, get_orderbook
- [ ] Auth: create_api_key, derive_api_key
- [ ] Trading: create_order, post_order, cancel_order, cancel_all
- [ ] Account: get_open_orders, get_trades, get_positions, get_balance

### Optional / Phase 2

- [ ] WebSocket client (market feed + user feed)
- [ ] Input validation layer (price bounds, size checks, token_id existence)
- [ ] Request logging / telemetry
- [ ] Integration tests against staging API (clob-staging.polymarket.com)
