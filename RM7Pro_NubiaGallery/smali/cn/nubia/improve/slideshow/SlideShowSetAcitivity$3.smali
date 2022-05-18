.class Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$3;
.super Ljava/lang/Object;
.source "SlideShowSetAcitivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->initView()V
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

    .line 104
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$3;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$3;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->finish()V

    .line 110
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$3;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    const v0, 0x7f010011

    const v1, 0x7f010029

    invoke-virtual {p1, v0, v1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->overridePendingTransition(II)V

    return-void
.end method
