.class Lcn/nubia/improve/slideshow/SlideShowTypeChooser$3;
.super Ljava/lang/Object;
.source "SlideShowTypeChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 73
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$3;->this$0:Lcn/nubia/improve/slideshow/SlideShowTypeChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$3;->this$0:Lcn/nubia/improve/slideshow/SlideShowTypeChooser;

    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->finish()V

    return-void
.end method
