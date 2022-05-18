.class Lcn/nubia/camera/bb/y$8;
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

    .line 554
    iput-object p1, p0, Lcn/nubia/camera/bb/y$8;->a:Lcn/nubia/camera/bb/y;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcn/nubia/camera/bb/y$8;->a:Lcn/nubia/camera/bb/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/y;->a(Lcn/nubia/camera/bb/y;Z)V

    return-void
.end method
