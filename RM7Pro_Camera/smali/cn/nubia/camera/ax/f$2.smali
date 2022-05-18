.class Lcn/nubia/camera/ax/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ax/f;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ax/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ax/f;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcn/nubia/camera/ax/f$2;->a:Lcn/nubia/camera/ax/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "ThirdPartyFragment"

    const-string v0, "User exit thirdparty."

    .line 195
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcn/nubia/camera/ax/f$2;->a:Lcn/nubia/camera/ax/f;

    invoke-virtual {p1}, Lcn/nubia/camera/ax/f;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
