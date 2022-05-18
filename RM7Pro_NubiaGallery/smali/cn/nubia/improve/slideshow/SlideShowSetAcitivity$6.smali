.class Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$6;
.super Ljava/lang/Object;
.source "SlideShowSetAcitivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->addSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;


# direct methods
.method constructor <init>(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$6;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$6;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->access$300(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    return-void
.end method
