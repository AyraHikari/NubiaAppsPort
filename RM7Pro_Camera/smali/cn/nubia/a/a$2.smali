.class Lcn/nubia/a/a$2;
.super Lcn/nubia/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/a/a;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/a/a;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/a/a$2;->a:Lcn/nubia/a/a;

    invoke-direct {p0}, Lcn/nubia/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/a/c;)Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcn/nubia/a/a$2;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->e(Lcn/nubia/a/a;)Lcn/nubia/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/a/a$2;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->e(Lcn/nubia/a/a;)Lcn/nubia/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/a/e;->a(Lcn/nubia/a/c;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcn/nubia/a/c;)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcn/nubia/a/a$2;->a:Lcn/nubia/a/a;

    invoke-virtual {v0}, Lcn/nubia/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/a$2;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->e(Lcn/nubia/a/a;)Lcn/nubia/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcn/nubia/a/a$2;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->e(Lcn/nubia/a/a;)Lcn/nubia/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/a/e;->b(Lcn/nubia/a/c;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
