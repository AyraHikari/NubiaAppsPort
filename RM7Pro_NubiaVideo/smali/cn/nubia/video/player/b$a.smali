.class Lcn/nubia/video/player/b$a;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field final synthetic e:Lcn/nubia/video/player/b;


# direct methods
.method public constructor <init>(Lcn/nubia/video/player/b;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/b$a;->e:Lcn/nubia/video/player/b;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x163

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_6

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    if-le p1, v0, :cond_3

    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    .line 1
    iget-boolean p1, p0, Lcn/nubia/video/player/b$a;->b:Z

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/b$a;->e:Lcn/nubia/video/player/b;

    invoke-virtual {p1}, Lcn/nubia/video/player/b;->f()V

    .line 3
    iput-boolean v1, p0, Lcn/nubia/video/player/b$a;->b:Z

    .line 4
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->a:Z

    .line 5
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->c:Z

    .line 6
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->d:Z

    goto :goto_1

    :cond_3
    const/16 v0, 0xaf

    if-le p1, v0, :cond_4

    const/16 v0, 0xb9

    if-ge p1, v0, :cond_4

    .line 7
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->a:Z

    .line 8
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->b:Z

    .line 9
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->d:Z

    .line 10
    iget-boolean p1, p0, Lcn/nubia/video/player/b$a;->c:Z

    if-nez p1, :cond_7

    .line 11
    iput-boolean v1, p0, Lcn/nubia/video/player/b$a;->c:Z

    goto :goto_1

    :cond_4
    const/16 v0, 0x104

    if-le p1, v0, :cond_7

    const/16 v0, 0x118

    if-ge p1, v0, :cond_7

    .line 12
    iget-boolean p1, p0, Lcn/nubia/video/player/b$a;->d:Z

    if-nez p1, :cond_5

    .line 13
    iget-object p1, p0, Lcn/nubia/video/player/b$a;->e:Lcn/nubia/video/player/b;

    invoke-virtual {p1}, Lcn/nubia/video/player/b;->f()V

    .line 14
    iput-boolean v1, p0, Lcn/nubia/video/player/b$a;->d:Z

    .line 15
    :cond_5
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->a:Z

    .line 16
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->b:Z

    .line 17
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->c:Z

    goto :goto_1

    .line 18
    :cond_6
    :goto_0
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->b:Z

    .line 19
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->c:Z

    .line 20
    iput-boolean v2, p0, Lcn/nubia/video/player/b$a;->d:Z

    .line 21
    iget-boolean p1, p0, Lcn/nubia/video/player/b$a;->a:Z

    if-nez p1, :cond_7

    .line 22
    iput-boolean v1, p0, Lcn/nubia/video/player/b$a;->a:Z

    :cond_7
    :goto_1
    return-void
.end method
