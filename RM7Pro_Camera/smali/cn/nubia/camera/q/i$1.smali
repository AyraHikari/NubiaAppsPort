.class Lcn/nubia/camera/q/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/i;->ar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/i;)V
    .locals 0

    .line 1250
    iput-object p1, p0, Lcn/nubia/camera/q/i$1;->a:Lcn/nubia/camera/q/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1253
    iget-object p2, p0, Lcn/nubia/camera/q/i$1;->a:Lcn/nubia/camera/q/i;

    invoke-static {p2}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/q/j;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/q/j;->e()V

    .line 1254
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
