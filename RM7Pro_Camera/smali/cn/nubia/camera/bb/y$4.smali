.class Lcn/nubia/camera/bb/y$4;
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

    .line 428
    iput-object p1, p0, Lcn/nubia/camera/bb/y$4;->a:Lcn/nubia/camera/bb/y;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 431
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 432
    iget-object v0, p0, Lcn/nubia/camera/bb/y$4;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->g(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/bb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->k()V

    return-void
.end method
