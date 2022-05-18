.class Lcn/nubia/camera/r/g$1;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/r/g;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/g;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/nubia/camera/r/g$1;->a:Lcn/nubia/camera/r/g;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/r/g$1;->a:Lcn/nubia/camera/r/g;

    invoke-static {v0}, Lcn/nubia/camera/r/g;->a(Lcn/nubia/camera/r/g;)Lcn/nubia/camera/r/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/r/k;->k()V

    return-void
.end method
