import { Controller, Get } from '@nestjs/common';
import {
  HealthCheck,
  HealthCheckService,
  HttpHealthIndicator,
} from '@nestjs/terminus';
import { Role } from '../role/role-guard';
import { Roles } from '../role/role-decorators';

@Controller('health')
export class HealthController {
  constructor(
    private health: HealthCheckService,
    private http: HttpHealthIndicator,
  ) {}

  @Get()
  @Roles(Role.PUBLIC)
  @HealthCheck()
  healthStatus() {
    return {
      health: 'ok',
    };
  }
}
