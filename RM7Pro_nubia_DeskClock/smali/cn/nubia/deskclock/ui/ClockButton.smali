.class public Lcn/nubia/deskclock/ui/ClockButton;
.super Landroid/widget/TextView;
.source "ClockButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockButton"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method private modiyRVerionBug()V
    .locals 6

    .prologue
    .line 37
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v4, v5, :cond_0

    .line 53
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 42
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 43
    .local v3, "thisClass":Ljava/lang/Class;
    const-string v4, "mPrimePointerId"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    .line 45
    .local v2, "isAccessible":Z
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 48
    .end local v2    # "isAccessible":Z
    .end local v3    # "thisClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "ClockButton"

    const-string v5, "onTouchEvent exception:"

    invoke-static {v4, v5, v0}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "ClockButton"

    const-string v5, "onTouchEvent exception:"

    invoke-static {v4, v5, v0}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/ClockButton;->modiyRVerionBug()V

    .line 33
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
