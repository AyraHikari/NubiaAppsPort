.class Lcn/nubia/camera/pretty/g$3;
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

    .line 255
    iput-object p1, p0, Lcn/nubia/camera/pretty/g$3;->a:Lcn/nubia/camera/pretty/g;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 259
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$3;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->i(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->k()V

    return-void
.end method
