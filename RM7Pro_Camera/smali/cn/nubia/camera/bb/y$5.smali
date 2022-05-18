.class Lcn/nubia/camera/bb/y$5;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/y;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/y;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/y;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcn/nubia/camera/bb/y$5;->a:Lcn/nubia/camera/bb/y;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 472
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 473
    iget-object v0, p0, Lcn/nubia/camera/bb/y$5;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->h(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/bb/v;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->L()V

    .line 474
    iget-object v0, p0, Lcn/nubia/camera/bb/y$5;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->i(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/q/h;->a(ZI)V

    return-void
.end method
