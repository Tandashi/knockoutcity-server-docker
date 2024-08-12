<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->

<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
<h3 align="center">Knockout City Server - Docker</h3>

  <p align="center">
    An <b>Unofficial</b> Docker Image that allows running a Private Server of <a href="https://www.knockoutcity.com/">Knockout City</a>.
    <br />
    <br />
    <a href="https://github.com/Tandashi/knockoutcity-server-docker/issues">Report Bug</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#prequisite">Prequisite</a>
    </li>
    <li>
      <a href="#usage">Usage</a>
      <ul>
        <li><a href="#environment-variables">Environment Variables</a></li>
      </ul>
    </li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>

<!-- USAGE  -->

## Prequisite

- [docker](https://www.docker.com) (any version that supports [compose v2](https://docs.docker.com/compose/migrate/))

## Usage

Copy the [`compose.yaml`](https://github.com/Tandashi/knockoutcity-server-docker/blob/main/compose.yaml) and tweak to your liking.

Then you can start the server as follows:

```bash
docker compose up
```

<!-- ENVIRONMENT VARIABLES  -->

### Environment Variables

For detailed information on the different parameters please refer to the Knockout City Private Server README.

| **Name**                             | **Required** | **Description**                                                                                                                                                                                                                                           |
| ------------------------------------ | ------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `KOC_BACKEND_MAX_PLAYER_CONNECTIONS` | No           | The maximum number of players that can be connected at the same time. <br /> `default`: 10                                                                                                                                                                |
| `KOC_BACKEND_PORT`                   | No           | TCP port on which the online backend services listen. <br /> `default`: 23600                                                                                                                                                                             |
| `KOC_SERVER_MIN_PORT`                | No           | Start of UDP port range on which game servers will listen. <br /> `default`: 23600                                                                                                                                                                        |
| `KOC_SERVER_MAX_PORT`                | No           | End of UDP port range on which game servers will listen.<br /> `default`: 23699                                                                                                                                                                           |
| `KOC_SECRET`                         | No           | A password that if specified needs also be passed to the KnockoutCity.exe                                                                                                                                                                                 |
| `KOC_BACKEND_DB`                     | Yes          | PostgreSQL connection string to use a running PostgreSQL server.                                                                                                                                                                                          |
| `KOC_BACKEND_REDIS_DB_HOST`          | Yes          | Hostname of a running Redis Server.                                                                                                                                                                                                                       |
| `KOC_BACKEND_REDIS_DB_PORT`          | No           | Port of a running Redis Server.<br /> `default`: 6379                                                                                                                                                                                                     |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>
