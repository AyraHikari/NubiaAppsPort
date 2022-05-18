.class Lcn/nubia/camera/m/d$1;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/m/d;->a(Lcom/android/preference/PreferenceGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/m/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/m/d;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/m/d$1;->a:Lcn/nubia/camera/m/d;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/m/d$1;->a:Lcn/nubia/camera/m/d;

    invoke-static {v0}, Lcn/nubia/camera/m/d;->a(Lcn/nubia/camera/m/d;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/m/a;->d()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/m/d;->a(Lcn/nubia/camera/m/d;Z)V

    return-void
.end method
