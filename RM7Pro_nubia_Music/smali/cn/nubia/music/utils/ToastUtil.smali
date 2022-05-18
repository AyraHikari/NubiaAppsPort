.class public Lcn/nubia/music/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mToast:Landroid/widget/Toast;

.field private static synObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/music/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/music/utils/ToastUtil;->synObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcn/nubia/music/utils/ToastUtil;->synObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcn/nubia/music/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcn/nubia/music/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x0

    .line 107
    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 108
    const v0, 0x7f0d01eb

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 109
    const v2, 0x7f0d01cd

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 110
    const v3, 0x7f0d01ec

    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 111
    const v4, 0x7f0d01ea

    invoke-static {v4}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 112
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 114
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 115
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 117
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 120
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v2, v4, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 122
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 127
    invoke-virtual {v1, v8, v7, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 128
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 129
    return-object v1
.end method

.method public static showMessage(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;II)V

    .line 39
    return-void
.end method

.method public static showMessage(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcn/nubia/music/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    sget-object v0, Lcn/nubia/music/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/utils/ToastUtil$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/music/utils/ToastUtil$2;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcn/nubia/music/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 62
    sget-object v0, Lcn/nubia/music/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/utils/ToastUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/music/utils/ToastUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public static showMessageLong(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;II)V

    .line 57
    return-void
.end method

.method public static showMessageLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 48
    return-void
.end method
