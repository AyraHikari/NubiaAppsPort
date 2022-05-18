.class public Lcom/android/calculator2/CalculatorService;
.super Landroid/app/Service;
.source "CalculatorService.java"

# interfaces
.implements Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;,
        Lcom/android/calculator2/CalculatorService$CalculatorServiceBinder;,
        Lcom/android/calculator2/CalculatorService$CharAction;,
        Lcom/android/calculator2/CalculatorService$OperatorAction;,
        Lcom/android/calculator2/CalculatorService$NumberAction;,
        Lcom/android/calculator2/CalculatorService$TouchAction;,
        Lcom/android/calculator2/CalculatorService$CalculatorState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FLOAT_WINDOW_HEIGHT:I = 0x1a0

.field private static final FLOAT_WINDOW_WIDTH:I = 0xd6

.field private static final FULL_HD:I = 0x438

.field private static final HD:I = 0x2d0

.field public static final INVALID_RES_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CalculatorService"

.field private static density:F = 0.0f

.field private static floatCalculatorHeight:I = 0x0

.field private static floatCalculatorWidth:I = 0x0

.field private static fullCalculatorHeight:I = 0x0

.field private static fullCalculatorWidth:I = 0x0

.field private static mTouchSlop:I = 0x0

.field private static moveMotionNumber:I = 0x0

.field private static slideDownCriticalValue:I = 0x0

.field private static slideLeftCriticalValue:I = 0x0

.field private static slideRightCriticalValue:I = 0x0

.field private static slideUpCriticalValue:I = 0x0

.field private static final translationAnimationDefaultBottomDimension:I = 0x62

.field private static final translationAnimationDefaultDimension:I = 0x32


# instance fields
.field private final TEXT_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private action_down_x:I

.field private action_down_y:I

.field private buttons:[Landroid/widget/Button;

.field private currentDarkMode:I

.field private imageButtons:[Landroid/widget/ImageButton;

.field private isAnimationLeftOrRightPending:Z

.field private isAnimationUpOrDownPending:Z

.field private isCalculatorInResultState:Z

.field private isFadeAnimationPending:Z

.field private isMoving:Z

.field private lastX:I

.field private lastY:I

.field private mCallback:Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;

.field private mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

.field private mEvaluator:Lcom/android/calculator2/CalculatorExpressionEvaluator;

.field private mFloatLayout:Landroid/widget/LinearLayout;

.field private mFormulaContainer:Lcom/android/calculator2/CalculatorScrollView4Float;

.field private final mFormulaEditableFactory:Landroid/text/Editable$Factory;

.field private mFormulaText:Lcom/android/calculator2/CalculatorFormula;

.field private final mFormulaTextWatcher:Landroid/text/TextWatcher;

.field private mHighlightSpan:Landroid/text/style/BackgroundColorSpan;

.field private mPopWindow:Landroid/widget/PopupWindow;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mResultText:Lcom/android/calculator2/CalculatorResult;

.field private mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

.field private mWindowManager:Landroid/view/WindowManager;

.field private movedX:I

.field private movedY:I

.field private newView2HandleEvents:Landroid/view/View;

.field private operatorButtons:[Landroid/widget/Button;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0xe

    .line 68
    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/4 v0, 0x4

    .line 69
    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->operatorButtons:[Landroid/widget/Button;

    const/4 v0, 0x2

    .line 70
    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->imageButtons:[Landroid/widget/ImageButton;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorService;->isCalculatorInResultState:Z

    .line 197
    new-instance v0, Lcom/android/calculator2/CalculatorService$1;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorService$1;-><init>(Lcom/android/calculator2/CalculatorService;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 701
    new-instance v0, Lcom/android/calculator2/CalculatorService$4;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "textColor"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/calculator2/CalculatorService$4;-><init>(Lcom/android/calculator2/CalculatorService;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->TEXT_COLOR:Landroid/util/Property;

    .line 714
    new-instance v0, Lcom/android/calculator2/CalculatorService$5;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorService$5;-><init>(Lcom/android/calculator2/CalculatorService;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaTextWatcher:Landroid/text/TextWatcher;

    .line 766
    new-instance v0, Lcom/android/calculator2/CalculatorService$6;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorService$6;-><init>(Lcom/android/calculator2/CalculatorService;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaEditableFactory:Landroid/text/Editable$Factory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorScrollView4Float;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaContainer:Lcom/android/calculator2/CalculatorScrollView4Float;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/calculator2/CalculatorService;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/calculator2/CalculatorService;->lastY:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/calculator2/CalculatorService;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/calculator2/CalculatorService;->lastY:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/calculator2/CalculatorService;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/calculator2/CalculatorService;->action_down_y:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/calculator2/CalculatorService;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/calculator2/CalculatorService;->action_down_y:I

    return p1
.end method

.method static synthetic access$1202(I)I
    .locals 0

    .line 56
    sput p0, Lcom/android/calculator2/CalculatorService;->moveMotionNumber:I

    return p0
.end method

.method static synthetic access$1208()I
    .locals 2

    .line 56
    sget v0, Lcom/android/calculator2/CalculatorService;->moveMotionNumber:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/calculator2/CalculatorService;->moveMotionNumber:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/calculator2/CalculatorService;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorService;->isMoving:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/calculator2/CalculatorService;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/calculator2/CalculatorService;->movedX:I

    return p0
.end method

.method static synthetic access$1402(Lcom/android/calculator2/CalculatorService;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/calculator2/CalculatorService;->movedX:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/calculator2/CalculatorService;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/calculator2/CalculatorService;->movedY:I

    return p0
.end method

.method static synthetic access$1502(Lcom/android/calculator2/CalculatorService;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/calculator2/CalculatorService;->movedY:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$1700()I
    .locals 1

    .line 56
    sget v0, Lcom/android/calculator2/CalculatorService;->slideLeftCriticalValue:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/calculator2/CalculatorService;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService;->slideLeftRightAnimation(Z)V

    return-void
.end method

.method static synthetic access$1900()I
    .locals 1

    .line 56
    sget v0, Lcom/android/calculator2/CalculatorService;->slideRightCriticalValue:I

    return v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .line 56
    sget v0, Lcom/android/calculator2/CalculatorService;->slideUpCriticalValue:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/calculator2/CalculatorService;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService;->slideUpAndDownAnimation(Z)V

    return-void
.end method

.method static synthetic access$2200()I
    .locals 1

    .line 56
    sget v0, Lcom/android/calculator2/CalculatorService;->slideDownCriticalValue:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/calculator2/CalculatorService;)Landroid/widget/LinearLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$2500()I
    .locals 1

    .line 56
    sget v0, Lcom/android/calculator2/CalculatorService;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/calculator2/CalculatorService;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService;->restoreDisplay(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->onClear()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->onDelete()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->onEquals()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mCallback:Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$CalculatorState;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService;->setState(Lcom/android/calculator2/CalculatorService$CalculatorState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorExpressionEvaluator;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mEvaluator:Lcom/android/calculator2/CalculatorExpressionEvaluator;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/calculator2/CalculatorService;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorService$CalculatorState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorExpressionTokenizer;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/android/calculator2/CalculatorService;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorService;->isAnimationUpOrDownPending:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/calculator2/CalculatorService;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorService;->isAnimationLeftOrRightPending:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->unhighlightResult()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calculator2/CalculatorService;)Landroid/view/View;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->newView2HandleEvents:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/calculator2/CalculatorService;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService;->newView2HandleEvents:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/calculator2/CalculatorService;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/calculator2/CalculatorService;->lastX:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/calculator2/CalculatorService;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/calculator2/CalculatorService;->lastX:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/calculator2/CalculatorService;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/calculator2/CalculatorService;->action_down_x:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/calculator2/CalculatorService;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/calculator2/CalculatorService;->action_down_x:I

    return p1
.end method

.method private calculateCriticalValues()V
    .locals 2

    .line 808
    sget p0, Lcom/android/calculator2/CalculatorService;->floatCalculatorWidth:I

    sget v0, Lcom/android/calculator2/CalculatorService;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x32

    sub-int/2addr p0, v0

    neg-int p0, p0

    sput p0, Lcom/android/calculator2/CalculatorService;->slideLeftCriticalValue:I

    .line 809
    sget p0, Lcom/android/calculator2/CalculatorService;->fullCalculatorWidth:I

    sget v0, Lcom/android/calculator2/CalculatorService;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x32

    sub-int/2addr p0, v0

    sput p0, Lcom/android/calculator2/CalculatorService;->slideRightCriticalValue:I

    .line 810
    sget p0, Lcom/android/calculator2/CalculatorService;->floatCalculatorHeight:I

    sget v0, Lcom/android/calculator2/CalculatorService;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x32

    sub-int/2addr p0, v0

    neg-int p0, p0

    sput p0, Lcom/android/calculator2/CalculatorService;->slideUpCriticalValue:I

    .line 811
    sget p0, Lcom/android/calculator2/CalculatorService;->fullCalculatorHeight:I

    sget v0, Lcom/android/calculator2/CalculatorService;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x62

    sub-int/2addr p0, v0

    sput p0, Lcom/android/calculator2/CalculatorService;->slideDownCriticalValue:I

    const-string p0, "CalculatorService"

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aaron: calculateCriticalValues(), slideLeftCriticalValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/calculator2/CalculatorService;->slideLeftCriticalValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slideRightCriticalValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/calculator2/CalculatorService;->slideRightCriticalValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slideUpCriticalValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/calculator2/CalculatorService;->slideUpCriticalValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slideDownCriticalValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/calculator2/CalculatorService;->slideDownCriticalValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createFloatView()V
    .locals 11

    .line 241
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/calculator2/CalculatorService;->floatCalculatorWidth:I

    sget v2, Lcom/android/calculator2/CalculatorService;->floatCalculatorHeight:I

    const/16 v3, 0x7f6

    const/16 v4, 0x628

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 244
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->initTheWindowParams()V

    .line 246
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0042

    .line 247
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    .line 249
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->mWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorService;->fadeoutAnimation(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 254
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0098

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 258
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->getDecimalSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0a0079

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    aput-object v4, v3, v0

    .line 260
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0a0153

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 261
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v6, 0x7f0a00ab

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 262
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0a00ac

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    .line 263
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/4 v4, 0x4

    iget-object v8, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00ad

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v3, v4

    .line 264
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/4 v4, 0x5

    iget-object v8, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00a8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v3, v4

    .line 265
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/4 v4, 0x6

    iget-object v8, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00a9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v3, v4

    .line 266
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/4 v4, 0x7

    iget-object v8, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00aa

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v3, v4

    .line 267
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/16 v4, 0x8

    iget-object v8, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00a5

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v3, v4

    .line 268
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/16 v4, 0x9

    iget-object v8, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00a6

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v3, v4

    .line 269
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/16 v4, 0xa

    iget-object v8, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00a7

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v3, v4

    .line 270
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/16 v4, 0xb

    iget-object v8, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00a4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v3, v4

    .line 271
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/16 v4, 0xc

    iget-object v8, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00a3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v3, v4

    .line 272
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    const/16 v4, 0xd

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v4

    .line 273
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->operatorButtons:[Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0150

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v0

    .line 274
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->operatorButtons:[Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0152

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v5

    .line 275
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->operatorButtons:[Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0158

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v6

    .line 276
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->operatorButtons:[Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a014f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v7

    .line 281
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->imageButtons:[Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a009c

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    aput-object v3, v2, v0

    .line 286
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->imageButtons:[Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a00bf

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    aput-object v3, v2, v5

    .line 288
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0078

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 289
    new-instance v3, Lcom/android/calculator2/-$$Lambda$CalculatorService$Bxn10v2FY2oyNGqVW5ESJmjLp2o;

    invoke-direct {v3, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorService$Bxn10v2FY2oyNGqVW5ESJmjLp2o;-><init>(Lcom/android/calculator2/CalculatorService;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a00ce

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 292
    new-instance v3, Lcom/android/calculator2/-$$Lambda$CalculatorService$by6Utc3NxFZGgDg5Zk3wrwz2gjo;

    invoke-direct {v3, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorService$by6Utc3NxFZGgDg5Zk3wrwz2gjo;-><init>(Lcom/android/calculator2/CalculatorService;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a00af

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorDisplay;

    .line 295
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a00cd

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorScrollView4Float;

    iput-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFormulaContainer:Lcom/android/calculator2/CalculatorScrollView4Float;

    .line 296
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a00cc

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorFormula;

    iput-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    .line 297
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0190

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorResult;

    iput-object v3, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    .line 298
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    new-instance v4, Lcom/android/calculator2/-$$Lambda$CalculatorService$ddpACLMV2zJ29KgA_aXtMvlXXNQ;

    invoke-direct {v4, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorService$ddpACLMV2zJ29KgA_aXtMvlXXNQ;-><init>(Lcom/android/calculator2/CalculatorService;)V

    invoke-virtual {v3, v4}, Lcom/android/calculator2/CalculatorResult;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 314
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v3, v5}, Lcom/android/calculator2/CalculatorResult;->setClickable(Z)V

    .line 316
    new-instance v3, Lcom/android/calculator2/CalculatorService$NumberAction;

    invoke-direct {v3, p0, v1}, Lcom/android/calculator2/CalculatorService$NumberAction;-><init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V

    .line 317
    new-instance v4, Lcom/android/calculator2/CalculatorService$OperatorAction;

    invoke-direct {v4, p0, v1}, Lcom/android/calculator2/CalculatorService$OperatorAction;-><init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V

    .line 318
    new-instance v5, Lcom/android/calculator2/CalculatorService$CharAction;

    invoke-direct {v5, p0, v1}, Lcom/android/calculator2/CalculatorService$CharAction;-><init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V

    .line 320
    iget-object v6, p0, Lcom/android/calculator2/CalculatorService;->buttons:[Landroid/widget/Button;

    array-length v7, v6

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 321
    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    new-instance v10, Lcom/android/calculator2/CalculatorService$TouchAction;

    invoke-direct {v10, p0, v1}, Lcom/android/calculator2/CalculatorService$TouchAction;-><init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 325
    :cond_0
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->operatorButtons:[Landroid/widget/Button;

    array-length v6, v3

    move v7, v0

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .line 326
    invoke-virtual {v8, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    new-instance v9, Lcom/android/calculator2/CalculatorService$TouchAction;

    invoke-direct {v9, p0, v1}, Lcom/android/calculator2/CalculatorService$TouchAction;-><init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v8, "CalculatorService"

    .line 328
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createFloatView: for ( for (Button num : buttons) ) char:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->imageButtons:[Landroid/widget/ImageButton;

    array-length v4, v3

    :goto_3
    if-ge v0, v4, :cond_2

    aget-object v6, v3, v0

    .line 332
    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    new-instance v7, Lcom/android/calculator2/CalculatorService$TouchAction;

    invoke-direct {v7, p0, v1}, Lcom/android/calculator2/CalculatorService$TouchAction;-><init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const-string v0, "CalculatorService"

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: Relative - MeasuredWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", MeasuredHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/calculator2/CalculatorService$TouchAction;

    invoke-direct {v3, p0, v1}, Lcom/android/calculator2/CalculatorService$TouchAction;-><init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 341
    new-instance v0, Lcom/android/calculator2/CalculatorService$TouchAction;

    invoke-direct {v0, p0, v1}, Lcom/android/calculator2/CalculatorService$TouchAction;-><init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V

    invoke-virtual {v2, v0}, Lcom/android/calculator2/CalculatorDisplay;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 342
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    new-instance v2, Lcom/android/calculator2/CalculatorService$TouchAction;

    invoke-direct {v2, p0, v1}, Lcom/android/calculator2/CalculatorService$TouchAction;-><init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V

    invoke-virtual {v0, v2}, Lcom/android/calculator2/CalculatorResult;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 343
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    new-instance v2, Lcom/android/calculator2/CalculatorService$TouchAction;

    invoke-direct {v2, p0, v1}, Lcom/android/calculator2/CalculatorService$TouchAction;-><init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V

    invoke-virtual {v0, v2}, Lcom/android/calculator2/CalculatorFormula;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private fadeoutAnimation(Z)V
    .locals 2

    const-string v0, "CalculatorService"

    const-string v1, "Aaron: call fadeoutAnimation()."

    .line 957
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->startFullScreenCalculator()V

    :cond_0
    return-void
.end method

.method private getDecimalSeparator()Ljava/lang/String;
    .locals 1

    .line 761
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p0

    const/16 v0, 0x66b

    if-ne p0, v0, :cond_0

    const-string p0, ","

    goto :goto_0

    .line 763
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private highlightResult()V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 381
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mHighlightSpan:Landroid/text/style/BackgroundColorSpan;

    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private initTheWindowParams()V
    .locals 4

    .line 233
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 234
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 235
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800035

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 236
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 237
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public static synthetic lambda$createFloatView$0(Lcom/android/calculator2/CalculatorService;Landroid/view/View;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mCallback:Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;

    invoke-interface {p0}, Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;->notifyClickCloseButton()V

    return-void
.end method

.method public static synthetic lambda$createFloatView$1(Lcom/android/calculator2/CalculatorService;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 292
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService;->fadeoutAnimation(Z)V

    return-void
.end method

.method public static synthetic lambda$createFloatView$2(Lcom/android/calculator2/CalculatorService;Landroid/view/View;)Z
    .locals 1

    .line 299
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorService;->isMoving:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 300
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 302
    iget p1, p0, Lcom/android/calculator2/CalculatorService;->movedX:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/calculator2/CalculatorService;->movedY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->showCopyDialog()V

    :cond_1
    return v0

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->showCopyDialog()V

    :cond_3
    return v0
.end method

.method public static synthetic lambda$showCopyDialog$3(Lcom/android/calculator2/CalculatorService;Landroid/view/View;)V
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 359
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    if-eqz v0, :cond_0

    const-string v0, "copy"

    .line 360
    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1100d8

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 366
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    .line 367
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$slideLeftRightAnimation$5(Lcom/android/calculator2/CalculatorService;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "CalculatorService"

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 888
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$slideUpAndDownAnimation$4(Lcom/android/calculator2/CalculatorService;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "CalculatorService"

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 850
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private onClear()V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 602
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    return-void
.end method

.method private onDelete()V
    .locals 2

    .line 593
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    .line 594
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 596
    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method private onEquals()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->INPUT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-ne v0, v1, :cond_1

    .line 581
    sget-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->EVALUATE:Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorService;->setState(Lcom/android/calculator2/CalculatorService$CalculatorState;)V

    .line 582
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calculator2/SystemUtil;->isFormulaContainsIllegalChars(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CalculatorService"

    const-string v1, "Aaron: onEquals, Formula Contains NO IllegalChars, call evaluate()."

    .line 583
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mEvaluator:Lcom/android/calculator2/CalculatorExpressionEvaluator;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/calculator2/CalculatorExpressionEvaluator;->evaluate(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "CalculatorService"

    const-string v0, "Aaron: onEquals, Formula Contains IllegalChars, DO NOT call evaluate()."

    .line 586
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private onError(I)V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->EVALUATE:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-eq v0, v1, :cond_0

    .line 634
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorResult;->setText(I)V

    return-void

    .line 637
    :cond_0
    sget-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->ERROR:Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorService;->setState(Lcom/android/calculator2/CalculatorService$CalculatorState;)V

    .line 638
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorResult;->setText(I)V

    return-void
.end method

.method private onResult(Ljava/lang/String;)V
    .locals 13

    const-string v0, "CalculatorService"

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: onResult(), result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorResult;->setPivotX(F)V

    .line 653
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorResult;->setPivotY(F)V

    .line 654
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setPivotX(F)V

    .line 655
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setPivotY(F)V

    .line 661
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getTextSize()F

    move-result p1

    const/4 v0, 0x0

    mul-float/2addr p1, v0

    .line 665
    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getCurrentTextColor()I

    move-result v1

    .line 666
    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorResult;->getCurrentTextColor()I

    move-result v2

    .line 669
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    .line 670
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v5, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v5}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/calculator2/CalculatorFormula;->setSelection(I)V

    .line 671
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/calculator2/CalculatorResult;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    iget-object v5, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v5}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/calculator2/CalculatorResult;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 673
    sget-object v3, Lcom/android/calculator2/CalculatorService$CalculatorState;->RESULT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-direct {p0, v3}, Lcom/android/calculator2/CalculatorService;->setState(Lcom/android/calculator2/CalculatorService$CalculatorState;)V

    .line 674
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v5, v0, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 675
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x4

    .line 677
    new-array v5, v5, [Landroid/animation/Animator;

    iget-object v7, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const/4 v8, 0x2

    new-array v9, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v12, v11, [F

    aput v6, v12, v4

    .line 679
    invoke-static {v10, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v9, v4

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v11, [F

    aput v6, v12, v4

    .line 680
    invoke-static {v10, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v9, v11

    .line 678
    invoke-static {v7, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v4

    iget-object v7, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    iget-object v9, p0, Lcom/android/calculator2/CalculatorService;->TEXT_COLOR:Landroid/util/Property;

    new-array v10, v11, [I

    aput v1, v10, v4

    .line 682
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v11

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const/4 v7, 0x3

    new-array v9, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v11, [F

    aput v6, v12, v4

    .line 684
    invoke-static {v10, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v9, v4

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v11, [F

    aput v6, v12, v4

    .line 685
    invoke-static {v10, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v9, v11

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v11, [F

    neg-float p1, p1

    aput p1, v10, v4

    .line 686
    invoke-static {v6, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v9, v8

    .line 683
    invoke-static {v1, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v5, v8

    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->TEXT_COLOR:Landroid/util/Property;

    new-array v6, v11, [I

    aput v2, v6, v4

    .line 687
    invoke-static {p1, v1, v6}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v5, v7

    .line 677
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e0001

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 690
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 691
    new-instance p1, Lcom/android/calculator2/CalculatorService$3;

    invoke-direct {p1, p0}, Lcom/android/calculator2/CalculatorService$3;-><init>(Lcom/android/calculator2/CalculatorService;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 697
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private recalculateDimensions()V
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 803
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/android/calculator2/CalculatorService;->fullCalculatorWidth:I

    .line 804
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/android/calculator2/CalculatorService;->fullCalculatorHeight:I

    return-void
.end method

.method private restoreDisplay(Z)V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->RESULT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-ne v0, v1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->INPUT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-direct {p0, v1}, Lcom/android/calculator2/CalculatorService;->setState(Lcom/android/calculator2/CalculatorService$CalculatorState;)V

    .line 573
    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    if-nez p1, :cond_0

    .line 575
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setState(Lcom/android/calculator2/CalculatorService$CalculatorState;)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-eq v0, p1, :cond_1

    .line 743
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    .line 744
    sget-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->ERROR:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-ne p1, v0, :cond_0

    const p1, 0x7f060217

    .line 747
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 748
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorFormula;->setTextColor(I)V

    .line 749
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorResult;->setTextColor(I)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const v0, 0x7f06015c

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setTextColor(I)V

    .line 752
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const v0, 0x7f06012c

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/calculator2/CalculatorResult;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showCopyDialog()V
    .locals 6

    .line 347
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0064

    const/4 v2, 0x0

    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 349
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    const/16 v3, 0x96

    const/16 v4, 0x64

    invoke-direct {v1, v0, v3, v4, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/android/calculator2/CalculatorService;->mPopWindow:Landroid/widget/PopupWindow;

    .line 350
    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mPopWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06015e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 352
    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mPopWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const/4 v3, 0x0

    const/16 v4, 0x190

    const/16 v5, 0x78

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 355
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->highlightResult()V

    const v1, 0x7f0a008a

    .line 356
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 357
    new-instance v1, Lcom/android/calculator2/-$$Lambda$CalculatorService$DuJkUW-aTqn2bJ4chxrvgO_ivd8;

    invoke-direct {v1, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorService$DuJkUW-aTqn2bJ4chxrvgO_ivd8;-><init>(Lcom/android/calculator2/CalculatorService;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mPopWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/android/calculator2/CalculatorService$2;

    invoke-direct {v1, p0}, Lcom/android/calculator2/CalculatorService$2;-><init>(Lcom/android/calculator2/CalculatorService;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private slideLeftRightAnimation(Z)V
    .locals 4

    const-string v0, "CalculatorService"

    const-string v1, "Aaron: call slideLeftRightAnimation()."

    .line 870
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorService;->isAnimationLeftOrRightPending:Z

    if-eqz v0, :cond_0

    const-string p0, "CalculatorService"

    const-string p1, "Aaron: Animation left/right Pending, return."

    .line 872
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 878
    sget v0, Lcom/android/calculator2/CalculatorService;->slideLeftCriticalValue:I

    .line 879
    sget v1, Lcom/android/calculator2/CalculatorService;->slideLeftCriticalValue:I

    add-int/lit16 v1, v1, 0x96

    goto :goto_0

    .line 881
    :cond_1
    sget v0, Lcom/android/calculator2/CalculatorService;->slideRightCriticalValue:I

    .line 882
    sget v1, Lcom/android/calculator2/CalculatorService;->slideRightCriticalValue:I

    add-int/lit16 v1, v1, -0x96

    :goto_0
    const/4 v2, 0x2

    .line 884
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 885
    new-instance v1, Lcom/android/calculator2/-$$Lambda$CalculatorService$klTm69-JWE_a8HHSRaImXn_Dykg;

    invoke-direct {v1, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorService$klTm69-JWE_a8HHSRaImXn_Dykg;-><init>(Lcom/android/calculator2/CalculatorService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 890
    new-instance v1, Lcom/android/calculator2/CalculatorService$8;

    invoke-direct {v1, p0, p1}, Lcom/android/calculator2/CalculatorService$8;-><init>(Lcom/android/calculator2/CalculatorService;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 904
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private slideUpAndDownAnimation(Z)V
    .locals 4

    const-string v0, "CalculatorService"

    const-string v1, "Aaron: call slideUpAndDownAnimation()."

    .line 832
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorService;->isAnimationUpOrDownPending:Z

    if-eqz v0, :cond_0

    const-string p0, "CalculatorService"

    const-string p1, "Aaron: Animation up/down Pending, return."

    .line 834
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 840
    sget v0, Lcom/android/calculator2/CalculatorService;->slideUpCriticalValue:I

    .line 841
    sget v1, Lcom/android/calculator2/CalculatorService;->slideUpCriticalValue:I

    add-int/lit16 v1, v1, 0x96

    goto :goto_0

    .line 843
    :cond_1
    sget v0, Lcom/android/calculator2/CalculatorService;->slideDownCriticalValue:I

    .line 844
    sget v1, Lcom/android/calculator2/CalculatorService;->slideDownCriticalValue:I

    add-int/lit16 v1, v1, -0x96

    :goto_0
    const/4 v2, 0x2

    .line 846
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 847
    new-instance v1, Lcom/android/calculator2/-$$Lambda$CalculatorService$j3Y8fmEW7DVKps6Hit27Y0lozHQ;

    invoke-direct {v1, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorService$j3Y8fmEW7DVKps6Hit27Y0lozHQ;-><init>(Lcom/android/calculator2/CalculatorService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 852
    new-instance v1, Lcom/android/calculator2/CalculatorService$7;

    invoke-direct {v1, p0, p1}, Lcom/android/calculator2/CalculatorService$7;-><init>(Lcom/android/calculator2/CalculatorService;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 866
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startFullScreenCalculator()V
    .locals 6

    .line 817
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calculator2.start_from_float"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.calculator2.Calculator"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 820
    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CalculatorService"

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: current formula = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "CUR_EXPR_2_FULL_SCREEN"

    const/4 v4, 0x0

    .line 823
    invoke-static {v4, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "START_FROM_FLOAT_CALCULATOR"

    const/4 v3, 0x1

    .line 824
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "RESULT_STATE"

    .line 825
    sget-object v4, Lcom/android/calculator2/CalculatorService$CalculatorState;->RESULT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    iget-object v5, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 826
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 827
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 828
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unhighlightResult()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 388
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mHighlightSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFormula()Ljava/lang/String;
    .locals 0

    .line 989
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isInResultState()Z
    .locals 1

    .line 993
    sget-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->RESULT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "CalculatorService"

    const-string v1, "Aaron: CalculatorService onBind()."

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "CUR_EXPR_2_FLOAT_CALCULATOR"

    .line 215
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESULT_STATE"

    const/4 v2, 0x0

    .line 216
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorService;->isCalculatorInResultState:Z

    if-eqz v0, :cond_0

    const-string p1, ","

    const-string v1, ""

    .line 218
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CalculatorService"

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: onBind(), isCalculatorInResultState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/calculator2/CalculatorService;->isCalculatorInResultState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", exprFromFullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorFormula;->append(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    new-instance p1, Lcom/android/calculator2/CalculatorService$CalculatorServiceBinder;

    invoke-direct {p1, p0}, Lcom/android/calculator2/CalculatorService$CalculatorServiceBinder;-><init>(Lcom/android/calculator2/CalculatorService;)V

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 779
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 781
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 782
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const-string v0, "CalculatorService"

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: new NightMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", old NightMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/calculator2/CalculatorService;->currentDarkMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget v0, p0, Lcom/android/calculator2/CalculatorService;->currentDarkMode:I

    if-eq v0, p1, :cond_1

    .line 785
    iput p1, p0, Lcom/android/calculator2/CalculatorService;->currentDarkMode:I

    .line 786
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 787
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void

    .line 792
    :cond_1
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->recalculateDimensions()V

    .line 793
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->calculateCriticalValues()V

    .line 796
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->initTheWindowParams()V

    .line 798
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "CalculatorService"

    const-string v1, "Aaron: CalculatorService onCreate()."

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 133
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iput v0, p0, Lcom/android/calculator2/CalculatorService;->currentDarkMode:I

    const-string v0, "CalculatorService"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: onCreate(), currentDarkMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/calculator2/CalculatorService;->currentDarkMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 138
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/android/calculator2/CalculatorService;->fullCalculatorWidth:I

    .line 139
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/android/calculator2/CalculatorService;->fullCalculatorHeight:I

    .line 140
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calculator2/CalculatorService;->density:F

    .line 141
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x2d0

    if-ne v2, v1, :cond_0

    .line 142
    sget v0, Lcom/android/calculator2/CalculatorService;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    sput v1, Lcom/android/calculator2/CalculatorService;->density:F

    goto :goto_0

    :cond_0
    const/16 v1, 0x438

    .line 143
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v0, :cond_1

    .line 144
    sget v0, Lcom/android/calculator2/CalculatorService;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    sput v1, Lcom/android/calculator2/CalculatorService;->density:F

    .line 147
    :cond_1
    :goto_0
    sget v0, Lcom/android/calculator2/CalculatorService;->density:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0xd6

    sput v0, Lcom/android/calculator2/CalculatorService;->floatCalculatorWidth:I

    .line 148
    sget v0, Lcom/android/calculator2/CalculatorService;->density:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x1a0

    sput v0, Lcom/android/calculator2/CalculatorService;->floatCalculatorHeight:I

    const-string v0, "CalculatorService"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: fullCalculatorWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/calculator2/CalculatorService;->fullCalculatorWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fullCalculatorHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/calculator2/CalculatorService;->fullCalculatorHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CalculatorService"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: floatCalculatorWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/calculator2/CalculatorService;->floatCalculatorWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", floatCalculatorHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/calculator2/CalculatorService;->floatCalculatorHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->createFloatView()V

    .line 154
    new-instance v0, Lcom/android/calculator2/CalculatorExpressionTokenizer;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorExpressionTokenizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

    .line 156
    new-instance v0, Lcom/android/calculator2/CalculatorExpressionEvaluator;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

    invoke-direct {v0, v1}, Lcom/android/calculator2/CalculatorExpressionEvaluator;-><init>(Lcom/android/calculator2/CalculatorExpressionTokenizer;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->mEvaluator:Lcom/android/calculator2/CalculatorExpressionEvaluator;

    .line 157
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mEvaluator:Lcom/android/calculator2/CalculatorExpressionEvaluator;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/calculator2/CalculatorExpressionEvaluator;->evaluate(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;)V

    .line 159
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaEditableFactory:Landroid/text/Editable$Factory;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorFormula;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 160
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorFormula;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mFormulaEditableFactory:Landroid/text/Editable$Factory;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorFormula;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 162
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorFormula;->setInputType(I)V

    .line 164
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getHighlightColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorService;->mHighlightSpan:Landroid/text/style/BackgroundColorSpan;

    .line 166
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    sput v0, Lcom/android/calculator2/CalculatorService;->mTouchSlop:I

    .line 167
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->calculateCriticalValues()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "CalculatorService"

    const-string v1, "Aaron: CalculatorService onDestroy()."

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorService;->isCalculatorInResultState:Z

    .line 175
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onEvaluate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string p1, "CalculatorService"

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aaron: onEvaluate(), result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCalculatorInResultState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/calculator2/CalculatorService;->isCalculatorInResultState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    sget-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->INPUT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-ne p1, v0, :cond_1

    .line 610
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "inf"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 611
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const p3, 0x7f110079

    invoke-virtual {p0, p3}, Lcom/android/calculator2/CalculatorService;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/calculator2/CalculatorResult;->setText(Ljava/lang/CharSequence;)V

    .line 612
    sget-object p1, Lcom/android/calculator2/CalculatorService$CalculatorState;->ERROR:Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService;->setState(Lcom/android/calculator2/CalculatorService$CalculatorState;)V

    goto :goto_0

    .line 614
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1, p2}, Lcom/android/calculator2/CalculatorResult;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    .line 617
    invoke-direct {p0, p3}, Lcom/android/calculator2/CalculatorService;->onError(I)V

    goto :goto_0

    .line 618
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "inf"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 619
    invoke-direct {p0, p2}, Lcom/android/calculator2/CalculatorService;->onResult(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_3
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService;->mCurrentState:Lcom/android/calculator2/CalculatorService$CalculatorState;

    sget-object p3, Lcom/android/calculator2/CalculatorService$CalculatorState;->EVALUATE:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-ne p1, p3, :cond_4

    .line 622
    sget-object p1, Lcom/android/calculator2/CalculatorService$CalculatorState;->INPUT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService;->setState(Lcom/android/calculator2/CalculatorService$CalculatorState;)V

    .line 624
    :cond_4
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorService;->isCalculatorInResultState:Z

    if-eqz p1, :cond_5

    const-string p1, "CalculatorService"

    const-string p2, "Aaron: call onEquals()."

    .line 625
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 626
    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorService;->isCalculatorInResultState:Z

    .line 627
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorService;->onEquals()V

    :cond_5
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const-string p2, "CalculatorService"

    const-string p3, "Aaron: CalculatorService onStartCommand()."

    .line 183
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string p2, "CUR_EXPR_2_FLOAT_CALCULATOR"

    .line 186
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "RESULT_STATE"

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorService;->isCalculatorInResultState:Z

    if-eqz p2, :cond_0

    const-string p1, ","

    const-string p3, ""

    .line 189
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CalculatorService"

    .line 190
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Aaron: onStartCommand(), isCalculatorInResultState = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorService;->isCalculatorInResultState:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", exprFromFullScreen = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorFormula;->append(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "CalculatorService"

    const-string v1, "Aaron: CalculatorService onUnbind()."

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public setCloseCallback(Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService;->mCallback:Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;

    return-void
.end method
