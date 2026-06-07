<!-- markdownlint-disable MD033 MD041 -->
<div align="center">
  <a href="https://github.com/dkschruteBeets/Pax8-API">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="Images/pax8-logo-dark.svg">
      <source media="(prefers-color-scheme: light)" srcset="Images/pax8-logo-light.svg">
      <img src="Images/pax8-logo-light.svg" alt="Pax8 Logo" width="300">
    </picture>
  </a>

<h1 align="center">Pax8 API PowerShell Module</h1>

  <p align="center">
    A PowerShell module for Pax8 partner and authentication endpoints.
    <br />
    <a href="https://github.com/dkschruteBeets/Pax8-API/blob/master/Pax8-API.md"><strong>Explore the docs</strong></a>
  </p>

  <p align="center">

[![Forks][forks-shield]][forks-url] [![Issues][issues-shield]][issues-url] [![MIT License][license-shield]][license-url] [![PS Gallery][ps-shield]][ps-url]

  </p>

  <p align="center">
    <a href="https://github.com/dkschruteBeets/Pax8-API/issues">Report Bug</a>
    |
    <a href="https://github.com/dkschruteBeets/Pax8-API/issues">Request Feature</a>
  </p>
</div>
<!-- markdownlint-enable MD033 MD041 -->

## About

This module provides PowerShell commands for working with Pax8 partner API resources, including:

- 🏢 Companies
- 👤 Contacts
- 🧾 Invoices
- 🛒 Orders
- 📦 Products
- 🔁 Subscriptions
- 📊 Usage summaries

The module uses the Pax8 OAuth client credentials flow for authentication. For current API reference material, see the [Pax8 developer documentation](https://devx.pax8.com/reference).

## Getting Started

The Pax8 API requires a developer application with a `client_id` and `client_secret`.

### Installation

```powershell
Install-Module -Name 'Pax8-API'
```

## Usage

Create a credential where the username is your Pax8 `client_id` and the password is your Pax8 `client_secret`, then connect:

```powershell
$credential = Get-Credential
Connect-Pax8 -credential $credential
```

Example read operations:

```powershell
Get-Pax8Company -page 0 -size 10
Get-Pax8Product -search 'Microsoft' -page 0 -size 10
Get-Pax8Invoice -page 0 -size 10
```

For a complete command list, see [Pax8-API.md](https://github.com/dkschruteBeets/Pax8-API/blob/master/Pax8-API.md).

## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/CoolFeature`)
3. Commit your Changes (`git commit -m 'Add some CoolFeature'`)
4. Push to the Branch (`git push origin feature/CoolFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

[forks-shield]: https://img.shields.io/github/forks/dkschruteBeets/Pax8-API?color=%2344d62c&logo=GitHub
[forks-url]: https://github.com/dkschruteBeets/Pax8-API/network/members
[issues-shield]: https://img.shields.io/github/issues/dkschruteBeets/Pax8-API?color=%2344d62c&logo=GitHub
[issues-url]: https://github.com/dkschruteBeets/Pax8-API/issues
[license-shield]: https://img.shields.io/github/license/dkschruteBeets/Pax8-API?color=%2344d62c&label=license&logo=GitHub
[license-url]: https://github.com/dkschruteBeets/Pax8-API/blob/master/LICENSE.txt
[ps-shield]: https://img.shields.io/powershellgallery/v/Pax8-API?color=%2344d62c&label=PS%20Gallery&logo=powershell&logoColor=white
[ps-url]: https://www.powershellgallery.com/packages/Pax8-API
