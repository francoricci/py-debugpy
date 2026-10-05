PORTNAME=	debugpy
PORTVERSION=	1.8.22
CATEGORIES=	devel python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Implementation of the Debug Adapter Protocol for Python
WWW=		https://github.com/microsoft/debugpy

LICENSE=	EPL MIT
LICENSE_COMB=	dual
LICENSE_FILE_MIT=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}setuptools>=0:devel/py-setuptools@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}wheel>=0:devel/py-wheel@${PY_FLAVOR}

USES=		dos2unix python

.include <bsd.port.pre.mk>

.if !exists(${LOCALBASE}/bin/cython)
    USE_PYTHON+=    cython
.endif

.include <bsd.port.mk>
