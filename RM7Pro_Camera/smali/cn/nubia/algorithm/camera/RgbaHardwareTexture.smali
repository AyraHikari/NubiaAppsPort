.class public Lcn/nubia/algorithm/camera/RgbaHardwareTexture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/algorithm/camera/a;


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NubiaGLCopy"

    .line 14
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1, p2, p3}, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;->initHardwareBuffer(III)J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;->a:J

    return-void
.end method

.method private static native getBuffer(J)[B
.end method

.method private static native getBufferCell(J)Ljava/nio/ByteBuffer;
.end method

.method private static native initHardwareBuffer(III)J
.end method

.method private static native releaseHardwareBuffer(J)V
.end method

.method private static native setBuffer(J[B)V
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 24
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;->a:J

    invoke-static {v0, v1}, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;->releaseHardwareBuffer(J)V

    return-void
.end method

.method public a([B)V
    .locals 2

    .line 39
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;->a:J

    invoke-static {v0, v1, p1}, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;->setBuffer(J[B)V

    return-void
.end method

.method public b()[B
    .locals 2

    .line 29
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;->a:J

    invoke-static {v0, v1}, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;->getBuffer(J)[B

    move-result-object v0

    return-object v0
.end method

.method public c()Lcn/nubia/algorithm/utils/a;
    .locals 3

    .line 34
    new-instance v0, Lcn/nubia/algorithm/utils/a;

    iget-wide v1, p0, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;->a:J

    invoke-static {v1, v2}, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;->getBufferCell(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/algorithm/utils/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
