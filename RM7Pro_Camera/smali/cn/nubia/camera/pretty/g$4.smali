.class Lcn/nubia/camera/pretty/g$4;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/g;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/g;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcn/nubia/camera/pretty/g$4;->a:Lcn/nubia/camera/pretty/g;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 276
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 277
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$4;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->a(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/pretty/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/e;->c()V

    .line 278
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$4;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->j(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/q/h;->a(ZI)V

    return-void
.end method
