.class public Lcn/nubia/l/b/g;
.super Lcn/nubia/l/b/a;
.source "SourceFile"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;IZ)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcn/nubia/l/b/a;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/l/b/g;->d:Landroid/content/Context;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcn/nubia/l/b/g;->e:Z

    .line 21
    iput-object p2, p0, Lcn/nubia/l/b/g;->b:Landroid/net/Uri;

    .line 22
    iput p3, p0, Lcn/nubia/l/b/g;->c:I

    .line 23
    iput-object p1, p0, Lcn/nubia/l/b/g;->d:Landroid/content/Context;

    .line 24
    iput-boolean p4, p0, Lcn/nubia/l/b/g;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/l/a/a;
    .locals 5

    .line 29
    iget-object v0, p0, Lcn/nubia/l/b/g;->a:Lcn/nubia/l/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/l/b/g;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcn/nubia/l/b/g;->a:Lcn/nubia/l/a/b;

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->a()I

    move-result v0

    .line 33
    iget-object v1, p0, Lcn/nubia/l/b/g;->d:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/l/b/g;->b:Landroid/net/Uri;

    invoke-static {v1, v2, v0}, Lcn/nubia/l/a/a;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcn/nubia/l/b/g;->b:Landroid/net/Uri;

    iget v3, p0, Lcn/nubia/l/b/g;->c:I

    iget-boolean v4, p0, Lcn/nubia/l/b/g;->e:Z

    invoke-static {v2, v1, v3, v0, v4}, Lcn/nubia/l/a/a;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZ)Lcn/nubia/l/a/a;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
