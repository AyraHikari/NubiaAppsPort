.class Lcn/nubia/camera/bb/v$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/n/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/v;->h(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/v;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcn/nubia/camera/bb/v$7;->a:Lcn/nubia/camera/bb/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 776
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/v$7;->a:Lcn/nubia/camera/bb/v;

    const v2, 0x7f0f02e6

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 765
    iget-object v0, p0, Lcn/nubia/camera/bb/v$7;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->D()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 768
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v$7;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    invoke-direct {p0}, Lcn/nubia/camera/bb/v$7;->b()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
