.class public Lcn/nubia/music/ui/GestureLayout;
.super Landroid/widget/RelativeLayout;
.source "GestureLayout.java"


# static fields
.field private static final FLING_LEFT:I = 0x0

.field private static final FLING_RIGHT:I = 0x1

.field private static final FLING_UP_DOWN:I = 0x2


# instance fields
.field private mDetector:Lcn/nubia/music/ui/GestureDetector;

.field private mGestureListener:Lcn/nubia/music/ui/GestureDetector$SimpleOnGestureListener;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mUpAndDownListen:Lcn/nubia/music/ui/OnUpAndDownListen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcn/nubia/music/ui/GestureLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/GestureLayout$1;-><init>(Lcn/nubia/music/ui/GestureLayout;)V

    iput-object v0, p0, Lcn/nubia/music/ui/GestureLayout;->mGestureListener:Lcn/nubia/music/ui/GestureDetector$SimpleOnGestureListener;

    .line 30
    invoke-direct {p0}, Lcn/nubia/music/ui/GestureLayout;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcn/nubia/music/ui/GestureLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/GestureLayout$1;-><init>(Lcn/nubia/music/ui/GestureLayout;)V

    iput-object v0, p0, Lcn/nubia/music/ui/GestureLayout;->mGestureListener:Lcn/nubia/music/ui/GestureDetector$SimpleOnGestureListener;

    .line 25
    invoke-direct {p0}, Lcn/nubia/music/ui/GestureLayout;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Lcn/nubia/music/ui/GestureLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/GestureLayout$1;-><init>(Lcn/nubia/music/ui/GestureLayout;)V

    iput-object v0, p0, Lcn/nubia/music/ui/GestureLayout;->mGestureListener:Lcn/nubia/music/ui/GestureDetector$SimpleOnGestureListener;

    .line 20
    invoke-direct {p0}, Lcn/nubia/music/ui/GestureLayout;->init()V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/ui/GestureLayout;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcn/nubia/music/ui/GestureLayout;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/ui/GestureLayout;)Lcn/nubia/music/ui/OnUpAndDownListen;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcn/nubia/music/ui/GestureLayout;->mUpAndDownListen:Lcn/nubia/music/ui/OnUpAndDownListen;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcn/nubia/music/ui/GestureDetector;

    invoke-virtual {p0}, Lcn/nubia/music/ui/GestureLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/ui/GestureLayout;->mGestureListener:Lcn/nubia/music/ui/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/ui/GestureDetector;-><init>(Landroid/content/Context;Lcn/nubia/music/ui/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/music/ui/GestureLayout;->mDetector:Lcn/nubia/music/ui/GestureDetector;

    .line 108
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 94
    .line 95
    iget-object v0, p0, Lcn/nubia/music/ui/GestureLayout;->mDetector:Lcn/nubia/music/ui/GestureDetector;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcn/nubia/music/ui/GestureLayout;->mDetector:Lcn/nubia/music/ui/GestureDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/music/ui/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 97
    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/music/ui/GestureLayout;->mListener:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method public setOnUpAndDownListen(Lcn/nubia/music/ui/OnUpAndDownListen;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/music/ui/GestureLayout;->mUpAndDownListen:Lcn/nubia/music/ui/OnUpAndDownListen;

    .line 40
    return-void
.end method
