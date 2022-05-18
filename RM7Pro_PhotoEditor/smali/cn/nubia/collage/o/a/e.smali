.class public Lcn/nubia/collage/o/a/e;
.super Lcn/nubia/collage/o/a/d;
.source ""


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcn/nubia/collage/o/a/c;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/o/a/d;-><init>(Lcn/nubia/collage/o/a/c;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/nubia/collage/o/a/e;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/collage/o/a/e;->d:Z

    iput-object p3, p0, Lcn/nubia/collage/o/a/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/o/a/e;->d:Z

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/o/a/e;->c:Ljava/lang/String;

    const-string v1, ".color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/o/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/collage/o/a/e;->d:Z

    return-void
.end method
