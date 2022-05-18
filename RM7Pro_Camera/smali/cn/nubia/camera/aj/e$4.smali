.class Lcn/nubia/camera/aj/e$4;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/e;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/e;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcn/nubia/camera/aj/e$4;->a:Lcn/nubia/camera/aj/e;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 597
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 598
    iget-object v0, p0, Lcn/nubia/camera/aj/e$4;->a:Lcn/nubia/camera/aj/e;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/e;->I()V

    .line 599
    iget-object v0, p0, Lcn/nubia/camera/aj/e$4;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->h(Lcn/nubia/camera/aj/e;)V

    .line 600
    iget-object v0, p0, Lcn/nubia/camera/aj/e$4;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->i(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/q/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->c()V

    .line 601
    iget-object v0, p0, Lcn/nubia/camera/aj/e$4;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->j(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->J()V

    .line 602
    iget-object v0, p0, Lcn/nubia/camera/aj/e$4;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->g(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/aj/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->k()V

    return-void
.end method
