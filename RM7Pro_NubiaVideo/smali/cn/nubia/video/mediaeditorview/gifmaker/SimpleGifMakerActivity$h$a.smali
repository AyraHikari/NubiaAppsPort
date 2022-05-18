.class Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/r/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/r/d<",
        "Ljava/lang/String;",
        "Lc/b/a/n/k/f/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h$a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lc/b/a/r/h/j;ZZ)Z
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/n/k/f/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h$a;->d(Lc/b/a/n/k/f/b;Ljava/lang/String;Lc/b/a/r/h/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lc/b/a/r/h/j;Z)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h$a;->c(Ljava/lang/Exception;Ljava/lang/String;Lc/b/a/r/h/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/String;Lc/b/a/r/h/j;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lc/b/a/r/h/j<",
            "Lc/b/a/n/k/f/b;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lc/b/a/n/k/f/b;Ljava/lang/String;Lc/b/a/r/h/j;ZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/k/f/b;",
            "Ljava/lang/String;",
            "Lc/b/a/r/h/j<",
            "Lc/b/a/n/k/f/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    check-cast p1, Lc/b/a/n/k/h/b;

    .line 2
    invoke-virtual {p1}, Lc/b/a/n/k/h/b;->e()Lc/b/a/l/a;

    move-result-object p2

    const/4 p3, 0x0

    const-wide/16 p4, 0x0

    move v0, p3

    .line 3
    :goto_0
    invoke-virtual {p1}, Lc/b/a/n/k/h/b;->g()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lc/b/a/l/a;->e(I)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h$a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;

    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->c:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->m(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;

    move-result-object p1

    const/16 p2, 0x3f3

    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return p3
.end method
