.class Lcn/nubia/camera/at/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/a;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/nubia/camera/at/a$4;->a:Lcn/nubia/camera/at/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 115
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/at/a$4;->a:Lcn/nubia/camera/at/a;

    invoke-static {v0}, Lcn/nubia/camera/at/a;->a(Lcn/nubia/camera/at/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
