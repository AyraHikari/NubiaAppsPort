.class Lcn/nubia/improve/slideshow/SlideShowTypeChooser$2;
.super Ljava/lang/Object;
.source "SlideShowTypeChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/SlideShowTypeChooser;


# direct methods
.method constructor <init>(Lcn/nubia/improve/slideshow/SlideShowTypeChooser;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$2;->this$0:Lcn/nubia/improve/slideshow/SlideShowTypeChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 68
    iget-object p2, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$2;->this$0:Lcn/nubia/improve/slideshow/SlideShowTypeChooser;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->setResult(I)V

    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
