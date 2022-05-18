.class Lcn/nubia/camera/aj/e$6;
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

    .line 654
    iput-object p1, p0, Lcn/nubia/camera/aj/e$6;->a:Lcn/nubia/camera/aj/e;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 657
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 658
    iget-object v0, p0, Lcn/nubia/camera/aj/e$6;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->k(Lcn/nubia/camera/aj/e;)V

    return-void
.end method
