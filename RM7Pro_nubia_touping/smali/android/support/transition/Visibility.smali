.class public abstract Landroid/support/transition/Visibility;
.super Landroid/support/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Visibility$DisappearListener;,
        Landroid/support/transition/Visibility$VisibilityInfo;,
        Landroid/support/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 92
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/4 v2, 0x3

    iput v2, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 99
    sget-object v2, Landroid/support/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string v2, "transitionVisibilityMode"

    invoke-static {v0, p2, v2, v3, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 104
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Landroid/support/transition/Visibility;->setMode(I)V

    .line 108
    :cond_0
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 5
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 142
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 143
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    iget-object v4, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 146
    .local v0, "loc":[I
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 147
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method private getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;
    .locals 7
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 187
    new-instance v0, Landroid/support/transition/Visibility$VisibilityInfo;

    invoke-direct {v0, v5}, Landroid/support/transition/Visibility$VisibilityInfo;-><init>(Landroid/support/transition/Visibility$1;)V

    .line 188
    .local v0, "visInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    iput-boolean v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 189
    iput-boolean v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 190
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 192
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 197
    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 199
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 204
    :goto_1
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 205
    iget v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_3

    .line 235
    :cond_0
    :goto_2
    return-object v0

    .line 194
    :cond_1
    iput v6, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 195
    iput-object v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 201
    :cond_2
    iput v6, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 202
    iput-object v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 209
    :cond_3
    iget v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v1, v2, :cond_5

    .line 210
    iget v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v1, :cond_4

    .line 211
    iput-boolean v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 212
    iput-boolean v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 213
    :cond_4
    iget v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v1, :cond_0

    .line 214
    iput-boolean v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 215
    iput-boolean v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 219
    :cond_5
    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    .line 220
    iput-boolean v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 221
    iput-boolean v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 222
    :cond_6
    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 223
    iput-boolean v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 224
    iput-boolean v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 228
    :cond_7
    if-nez p1, :cond_8

    iget v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v1, :cond_8

    .line 229
    iput-boolean v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 230
    iput-boolean v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 231
    :cond_8
    if-nez p2, :cond_0

    iget v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v1, :cond_0

    .line 232
    iput-boolean v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 233
    iput-boolean v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 158
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 153
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0, p2, p3}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v6

    .line 243
    .local v6, "visInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    iget-boolean v0, v6, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, v6, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 245
    :cond_0
    iget-boolean v0, v6, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v0, :cond_1

    .line 246
    iget v3, v6, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v6, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 249
    :cond_1
    iget v3, v6, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v6, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/support/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 138
    sget-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .locals 5
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    const/4 v1, 0x0

    .line 455
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v1

    .line 458
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    .line 459
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    .line 460
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 465
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 466
    .local v0, "changeInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    iget-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    const/4 v3, 0x0

    .line 176
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return v3

    .line 179
    :cond_0
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 180
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 182
    .local v0, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 275
    iget v5, p0, Landroid/support/transition/Visibility;->mMode:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    if-nez p4, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-object v4

    .line 278
    :cond_1
    if-nez p2, :cond_2

    .line 279
    iget-object v5, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 280
    .local v0, "endParent":Landroid/view/View;
    invoke-virtual {p0, v0, v7}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v3

    .line 282
    .local v3, "startParentValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p0, v0, v7}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v1

    .line 284
    .local v1, "endParentValues":Landroid/support/transition/TransitionValues;
    invoke-direct {p0, v3, v1}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v2

    .line 285
    .local v2, "parentVisibilityInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    iget-boolean v5, v2, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v5, :cond_0

    .line 289
    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroid/support/transition/TransitionValues;
    .end local v2    # "parentVisibilityInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    .end local v3    # "startParentValues":Landroid/support/transition/TransitionValues;
    :cond_2
    iget-object v4, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v4, p2, p4}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v4

    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 26
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/transition/Visibility;->mMode:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x2

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 333
    const/4 v5, 0x0

    .line 429
    :goto_0
    return-object v5

    .line 336
    :cond_0
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v22, v0

    .line 337
    .local v22, "startView":Landroid/view/View;
    :goto_1
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 338
    .local v8, "endView":Landroid/view/View;
    :goto_2
    const/4 v15, 0x0

    .line 339
    .local v15, "overlayView":Landroid/view/View;
    const/16 v23, 0x0

    .line 340
    .local v23, "viewToKeep":Landroid/view/View;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_8

    .line 341
    :cond_1
    if-eqz v8, :cond_5

    .line 343
    move-object v15, v8

    .line 386
    :cond_2
    :goto_3
    move/from16 v10, p5

    .line 388
    .local v10, "finalVisibility":I
    if-eqz v15, :cond_c

    if-eqz p2, :cond_c

    .line 390
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "android:visibility:screenLocation"

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [I

    move-object/from16 v17, v24

    check-cast v17, [I

    .line 391
    .local v17, "screenLoc":[I
    const/16 v24, 0x0

    aget v18, v17, v24

    .line 392
    .local v18, "screenX":I
    const/16 v24, 0x1

    aget v19, v17, v24

    .line 393
    .local v19, "screenY":I
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v12, v0, [I

    .line 394
    .local v12, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 395
    const/16 v24, 0x0

    aget v24, v12, v24

    sub-int v24, v18, v24

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 396
    const/16 v24, 0x1

    aget v24, v12, v24

    sub-int v24, v19, v24

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 397
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;

    move-result-object v14

    .line 398
    .local v14, "overlay":Landroid/support/transition/ViewGroupOverlayImpl;
    invoke-interface {v14, v15}, Landroid/support/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 400
    .local v5, "animator":Landroid/animation/Animator;
    if-nez v5, :cond_b

    .line 401
    invoke-interface {v14, v15}, Landroid/support/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    goto/16 :goto_0

    .line 336
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v8    # "endView":Landroid/view/View;
    .end local v10    # "finalVisibility":I
    .end local v12    # "loc":[I
    .end local v14    # "overlay":Landroid/support/transition/ViewGroupOverlayImpl;
    .end local v15    # "overlayView":Landroid/view/View;
    .end local v17    # "screenLoc":[I
    .end local v18    # "screenX":I
    .end local v19    # "screenY":I
    .end local v22    # "startView":Landroid/view/View;
    .end local v23    # "viewToKeep":Landroid/view/View;
    :cond_3
    const/16 v22, 0x0

    goto :goto_1

    .line 337
    .restart local v22    # "startView":Landroid/view/View;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 344
    .restart local v8    # "endView":Landroid/view/View;
    .restart local v15    # "overlayView":Landroid/view/View;
    .restart local v23    # "viewToKeep":Landroid/view/View;
    :cond_5
    if-eqz v22, :cond_2

    .line 348
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_6

    .line 350
    move-object/from16 v15, v22

    goto :goto_3

    .line 351
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/view/View;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 352
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    .line 353
    .local v20, "startParent":Landroid/view/View;
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v21

    .line 354
    .local v21, "startParentValues":Landroid/support/transition/TransitionValues;
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v7

    .line 357
    .local v7, "endParentValues":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v16

    .line 358
    .local v16, "parentVisibilityInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 359
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/support/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_3

    .line 361
    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_2

    .line 362
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getId()I

    move-result v11

    .line 363
    .local v11, "id":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v11, v0, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/transition/Visibility;->mCanRemoveViews:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 368
    move-object/from16 v15, v22

    goto/16 :goto_3

    .line 375
    .end local v7    # "endParentValues":Landroid/support/transition/TransitionValues;
    .end local v11    # "id":I
    .end local v16    # "parentVisibilityInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    .end local v20    # "startParent":Landroid/view/View;
    .end local v21    # "startParentValues":Landroid/support/transition/TransitionValues;
    :cond_8
    const/16 v24, 0x4

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 376
    move-object/from16 v23, v8

    goto/16 :goto_3

    .line 379
    :cond_9
    move-object/from16 v0, v22

    if-ne v0, v8, :cond_a

    .line 380
    move-object/from16 v23, v8

    goto/16 :goto_3

    .line 382
    :cond_a
    move-object/from16 v15, v22

    goto/16 :goto_3

    .line 403
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v10    # "finalVisibility":I
    .restart local v12    # "loc":[I
    .restart local v14    # "overlay":Landroid/support/transition/ViewGroupOverlayImpl;
    .restart local v17    # "screenLoc":[I
    .restart local v18    # "screenX":I
    .restart local v19    # "screenY":I
    :cond_b
    move-object v9, v15

    .line 404
    .local v9, "finalOverlayView":Landroid/view/View;
    new-instance v24, Landroid/support/transition/Visibility$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v9}, Landroid/support/transition/Visibility$1;-><init>(Landroid/support/transition/Visibility;Landroid/support/transition/ViewGroupOverlayImpl;Landroid/view/View;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 414
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v9    # "finalOverlayView":Landroid/view/View;
    .end local v12    # "loc":[I
    .end local v14    # "overlay":Landroid/support/transition/ViewGroupOverlayImpl;
    .end local v17    # "screenLoc":[I
    .end local v18    # "screenX":I
    .end local v19    # "screenY":I
    :cond_c
    if-eqz v23, :cond_e

    .line 415
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v13

    .line 416
    .local v13, "originalVisibility":I
    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 418
    .restart local v5    # "animator":Landroid/animation/Animator;
    if-eqz v5, :cond_d

    .line 419
    new-instance v6, Landroid/support/transition/Visibility$DisappearListener;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v6, v0, v10, v1}, Landroid/support/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 421
    .local v6, "disappearListener":Landroid/support/transition/Visibility$DisappearListener;
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 422
    invoke-static {v5, v6}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 423
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/transition/Visibility;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    goto/16 :goto_0

    .line 425
    .end local v6    # "disappearListener":Landroid/support/transition/Visibility$DisappearListener;
    :cond_d
    move-object/from16 v0, v23

    invoke-static {v0, v13}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 429
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v13    # "originalVisibility":I
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 118
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput p1, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 122
    return-void
.end method
