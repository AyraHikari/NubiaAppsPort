.class Lcn/nubia/camera/am/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/am/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/am/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/am/c;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/nubia/camera/am/c$1;->a:Lcn/nubia/camera/am/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    iget-object p2, p0, Lcn/nubia/camera/am/c$1;->a:Lcn/nubia/camera/am/c;

    invoke-static {p2}, Lcn/nubia/camera/am/c;->a(Lcn/nubia/camera/am/c;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 65
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
