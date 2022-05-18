.class Lcn/nubia/camera/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/a/c;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/a/c$a;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/c;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/camera/a/c$1;->a:Lcn/nubia/camera/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcn/nubia/camera/a/c$1;->a:Lcn/nubia/camera/a/c;

    invoke-static {p1}, Lcn/nubia/camera/a/c;->a(Lcn/nubia/camera/a/c;)V

    :cond_0
    return-void
.end method
