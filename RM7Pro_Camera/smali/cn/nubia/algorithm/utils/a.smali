.class public Lcn/nubia/algorithm/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/algorithm/utils/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field private b:Lcn/nubia/algorithm/utils/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Buffer"

    .line 14
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    .line 18
    sget-object v0, Lcn/nubia/algorithm/utils/a$a;->a:Lcn/nubia/algorithm/utils/a$a;

    iput-object v0, p0, Lcn/nubia/algorithm/utils/a;->b:Lcn/nubia/algorithm/utils/a$a;

    .line 26
    invoke-static {p1}, Lcn/nubia/algorithm/utils/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    .line 18
    sget-object v0, Lcn/nubia/algorithm/utils/a$a;->a:Lcn/nubia/algorithm/utils/a$a;

    iput-object v0, p0, Lcn/nubia/algorithm/utils/a;->b:Lcn/nubia/algorithm/utils/a$a;

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput-object p1, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte buffer must be directly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 21
    array-length v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/algorithm/utils/a;-><init>(I)V

    .line 22
    invoke-virtual {p0, p1}, Lcn/nubia/algorithm/utils/a;->a([B)V

    return-void
.end method

.method private static a(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 80
    invoke-static {p0}, Lcn/nubia/algorithm/utils/Buffer;->createBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 84
    invoke-static {p0}, Lcn/nubia/algorithm/utils/Buffer;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static a([BLjava/nio/ByteBuffer;I)V
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lcn/nubia/algorithm/utils/Buffer;->putDataToNative([BLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method private static b(Ljava/nio/ByteBuffer;)[B
    .locals 0

    .line 92
    invoke-static {p0}, Lcn/nubia/algorithm/utils/Buffer;->getDataFromNative(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/nio/ByteBuffer;)[I
    .locals 0

    .line 96
    invoke-static {p0}, Lcn/nubia/algorithm/utils/Buffer;->getIntArrayFromNative(Ljava/nio/ByteBuffer;)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-static {v0}, Lcn/nubia/algorithm/utils/a;->a(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a([B)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcn/nubia/algorithm/utils/a;->a([BLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public b()[B
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    invoke-static {v0}, Lcn/nubia/algorithm/utils/a;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public c()[I
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    invoke-static {v0}, Lcn/nubia/algorithm/utils/a;->c(Ljava/nio/ByteBuffer;)[I

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
