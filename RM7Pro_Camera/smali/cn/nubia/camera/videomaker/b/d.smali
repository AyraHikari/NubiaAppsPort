.class public Lcn/nubia/camera/videomaker/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Random;

.field private static b:[C

.field private static c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcn/nubia/camera/videomaker/b/d;->a:Ljava/util/Random;

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789"

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/videomaker/b/d;->b:[C

    const-string v0, "0123456789"

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/videomaker/b/d;->c:[C

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_0
    new-array v1, p0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 82
    sget-object v3, Lcn/nubia/camera/videomaker/b/d;->b:[C

    sget-object v4, Lcn/nubia/camera/videomaker/b/d;->a:Ljava/util/Random;

    array-length v5, v3

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4

    const-wide/32 v0, 0x36ee80

    .line 119
    div-long v2, p1, v0

    .line 120
    rem-long/2addr p1, v0

    const-wide/32 v0, 0xea60

    .line 121
    div-long v2, p1, v0

    .line 122
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 123
    div-long v2, p1, v0

    .line 124
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x64

    .line 125
    div-long/2addr p1, v0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 128
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string p1, "%d.%01d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
