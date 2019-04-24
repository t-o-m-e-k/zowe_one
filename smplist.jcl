//SMPLIST  JOB 1111,'TULINSKI',NOTIFY=&SYSUID,REGION=32M,
//             CLASS=A,MSGCLASS=1,MSGLEVEL=(1,1)
//*---------------------------------------------------------------------
//*
//* JOB TO LIST all DDEFs in a zone
//* 2019/04/24
//*---------------------------------------------------------------------
//SMPLIST  EXEC PGM=GIMSMP,
//         PARM='PROCESS=WAIT',
//         DYNAMNBR=120
//*
//SMPCSI   DD DISP=SHR,DSN=ZOS.V2R3.GLOBAL.CSI
//*
//SMPCNTL  DD *
  SET      BDY(TZZN01I)       /* Set to target zone       */.
  LIST     DDDEF              /* List all DDDEF entries.  */.
