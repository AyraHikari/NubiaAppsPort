.class Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$5;
.super Ljava/lang/Object;
.source "SlideShowSetAcitivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 122
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$5;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$5;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->access$200(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)Lcn/nubia/improve/slideshow/SlideShowSetting;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/improve/slideshow/SlideShowSetting;->setPlayRepeat(Z)V

    .line 129
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$5;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->access$200(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)Lcn/nubia/improve/slideshow/SlideShowSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->Save()V

    return-void
.end method
