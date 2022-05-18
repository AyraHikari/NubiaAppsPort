.class public Lcn/nubia/video/player/s/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/s/d$a;,
        Lcn/nubia/video/player/s/d$b;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/content/Context;ILandroid/net/Uri;)Lcn/nubia/video/mediajni/IMediaPlayer;
    .locals 11

    const/4 v0, 0x0

    .line 1
    sput v0, Lcn/nubia/video/player/s/d;->b:I

    .line 2
    new-instance v1, Lcn/nubia/video/player/s/d$a;

    invoke-direct {v1, p0, p2}, Lcn/nubia/video/player/s/d$a;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->a()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    :cond_0
    :goto_0
    move v2, v3

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "content://com.android.externalstorage.documents/document/primary"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "content://com.android.externalstorage.documents/document"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->i()Z

    move-result v2

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->e()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 9
    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->g()Lcn/nubia/video/player/s/d$b;

    move-result-object v4

    .line 10
    iget v2, v4, Lcn/nubia/video/player/s/d$b;->a:I

    invoke-virtual {v1, v2}, Lcn/nubia/video/player/s/d$a;->k(I)I

    move-result v2

    sput v2, Lcn/nubia/video/player/s/d;->b:I

    goto :goto_0

    :goto_1
    if-nez p1, :cond_5

    if-nez v2, :cond_6

    .line 11
    :cond_5
    sget p1, Lcn/nubia/video/player/s/d;->b:I

    if-lez p1, :cond_7

    .line 12
    :cond_6
    sput v0, Lcn/nubia/video/player/s/d;->a:I

    .line 13
    new-instance p0, Lcn/nubia/video/player/s/a;

    invoke-direct {p0}, Lcn/nubia/video/player/s/a;-><init>()V

    if-eqz v4, :cond_b

    .line 14
    sget v6, Lcn/nubia/video/player/s/d;->b:I

    iget v7, v4, Lcn/nubia/video/player/s/d$b;->a:I

    iget v8, v4, Lcn/nubia/video/player/s/d$b;->b:I

    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->f()J

    move-result-wide v9

    move-object v5, p0

    invoke-interface/range {v5 .. v10}, Lcn/nubia/video/mediajni/IMediaPlayer;->setPlaySpeedParams(IIIJ)V

    .line 15
    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->d()I

    move-result p1

    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->c()I

    move-result p2

    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->b()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->setPlaySpeedChangeTime(III)V

    goto :goto_3

    .line 16
    :cond_7
    invoke-static {p0}, Lb/a/b/d/d;->b(Landroid/content/Context;)V

    .line 17
    invoke-static {p0, p2}, Lb/a/b/d/e;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    .line 18
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    :cond_8
    invoke-static {p0}, Lb/a/b/d/d;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 20
    new-instance p0, Lcn/nubia/video/player/s/a;

    invoke-direct {p0}, Lcn/nubia/video/player/s/a;-><init>()V

    goto :goto_2

    .line 21
    :cond_9
    sput v3, Lcn/nubia/video/player/s/d;->a:I

    .line 22
    new-instance p0, Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;-><init>()V

    if-eqz v4, :cond_a

    .line 23
    sget v3, Lcn/nubia/video/player/s/d;->b:I

    iget p1, v4, Lcn/nubia/video/player/s/d$b;->a:I

    iget v5, v4, Lcn/nubia/video/player/s/d$b;->b:I

    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->f()J

    move-result-wide v6

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/video/mediajni/NubiaPlayer;->setPlaySpeedParams(IIIJ)V

    .line 24
    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->d()I

    move-result p1

    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->c()I

    move-result p2

    invoke-virtual {v1}, Lcn/nubia/video/player/s/d$a;->b()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->setPlaySpeedChangeTime(III)V

    .line 25
    :cond_a
    :goto_2
    invoke-static {}, Lb/a/b/d/d;->c()V

    :cond_b
    :goto_3
    return-object p0
.end method

.method public static b()Lcn/nubia/video/mediajni/IMediaPlayer;
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/video/player/s/a;

    invoke-direct {v0}, Lcn/nubia/video/player/s/a;-><init>()V

    return-object v0
.end method

.method public static c(Landroid/content/Context;ILandroid/net/Uri;)Lcn/nubia/video/mediajni/IMediaPlayer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lcn/nubia/video/player/s/d;->a:I

    .line 2
    invoke-static {p0, p1, p2}, Lcn/nubia/video/player/s/d;->a(Landroid/content/Context;ILandroid/net/Uri;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static d()I
    .locals 1

    .line 1
    sget v0, Lcn/nubia/video/player/s/d;->a:I

    return v0
.end method
