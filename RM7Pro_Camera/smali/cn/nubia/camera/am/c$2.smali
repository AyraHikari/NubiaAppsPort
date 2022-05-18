.class Lcn/nubia/camera/am/c$2;
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

    .line 51
    iput-object p1, p0, Lcn/nubia/camera/am/c$2;->a:Lcn/nubia/camera/am/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 54
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 55
    iget-object p1, p0, Lcn/nubia/camera/am/c$2;->a:Lcn/nubia/camera/am/c;

    invoke-static {p1}, Lcn/nubia/camera/am/c;->b(Lcn/nubia/camera/am/c;)Lcn/nubia/camera/am/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcn/nubia/camera/am/c$2;->a:Lcn/nubia/camera/am/c;

    invoke-static {p1}, Lcn/nubia/camera/am/c;->b(Lcn/nubia/camera/am/c;)Lcn/nubia/camera/am/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/am/c$a;->a()V

    .line 58
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/am/c$2;->a:Lcn/nubia/camera/am/c;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/camera/am/c;->a(Lcn/nubia/camera/am/c;I)V

    return-void
.end method
