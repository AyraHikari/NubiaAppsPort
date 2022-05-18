.class public Lcn/nubia/l/b/e;
.super Lcn/nubia/l/b/a;
.source "SourceFile"


# instance fields
.field private d:[B

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;[BIZ)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcn/nubia/l/b/a;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/l/b/e;->d:[B

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcn/nubia/l/b/e;->e:Z

    .line 19
    iput-object p1, p0, Lcn/nubia/l/b/e;->b:Landroid/net/Uri;

    .line 20
    iput-object p2, p0, Lcn/nubia/l/b/e;->d:[B

    .line 21
    iput p3, p0, Lcn/nubia/l/b/e;->c:I

    .line 22
    iput-boolean p4, p0, Lcn/nubia/l/b/e;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/l/a/a;
    .locals 5

    .line 27
    iget-object v0, p0, Lcn/nubia/l/b/e;->a:Lcn/nubia/l/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcn/nubia/l/b/e;->a:Lcn/nubia/l/a/b;

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->a()I

    move-result v0

    .line 31
    iget-object v1, p0, Lcn/nubia/l/b/e;->d:[B

    iget v2, p0, Lcn/nubia/l/b/e;->c:I

    iget-object v3, p0, Lcn/nubia/l/b/e;->b:Landroid/net/Uri;

    iget-boolean v4, p0, Lcn/nubia/l/b/e;->e:Z

    invoke-static {v1, v2, v3, v0, v4}, Lcn/nubia/l/a/a;->a([BILandroid/net/Uri;IZ)Lcn/nubia/l/a/a;

    move-result-object v0

    return-object v0
.end method
