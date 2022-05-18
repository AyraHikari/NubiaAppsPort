.class Lcn/nubia/improve/slideshow/SlideShowTypeChooser$1;
.super Ljava/lang/Object;
.source "SlideShowTypeChooser.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/SlideShowTypeChooser;
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

    .line 35
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowTypeChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 38
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "show-type"

    .line 39
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowTypeChooser;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->setResult(ILandroid/content/Intent;)V

    .line 41
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowTypeChooser;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->access$000(Lcn/nubia/improve/slideshow/SlideShowTypeChooser;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
