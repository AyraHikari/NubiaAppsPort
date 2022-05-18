.class public Lcn/nubia/gallery3d/app/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/StateManager$StateEntry;
    }
.end annotation


# static fields
.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_MAIN:Ljava/lang/String; = "activity-state"

.field private static final KEY_STATE:Ljava/lang/String; = "bundle"

.field private static final TAG:Ljava/lang/String; = "StateManager"


# instance fields
.field private mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mIsResumed:Z

.field private mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

.field private mResumeFlag:Z

.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcn/nubia/gallery3d/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mResumeFlag:Z

    .line 45
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    .line 49
    iput-object p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    return-void
.end method


# virtual methods
.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/ActivityState;->onCreateActionBar(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 2

    const-string v0, "StateManager"

    const-string v1, "destroy"

    .line 306
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ActivityState;->onDestroy()V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public exchangeState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/StateManager;->getSpecifiedState(Ljava/lang/Class;)Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, p1, v3}, Lcn/nubia/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 81
    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    .line 82
    :cond_0
    instance-of v2, v1, Lcn/nubia/gallery3d/app/CloudPage;

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 84
    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/ActivityState;->onDestroy()V

    :cond_1
    if-eqz v0, :cond_2

    .line 89
    iget-object p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->resume()V

    goto :goto_0

    .line 94
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/gallery3d/app/ActivityState;->initialize(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v1, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v1, p2, p1}, Lcn/nubia/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcn/nubia/gallery3d/app/ActivityState;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, p2, v0}, Lcn/nubia/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 102
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->resume()V

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method finishState(Lcn/nubia/gallery3d/app/ActivityState;)V
    .locals 5

    .line 215
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "StateManager"

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->isTab()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishState "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_2

    .line 239
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    if-eq p1, v0, :cond_3

    .line 240
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "The state is already destroyed"

    .line 241
    invoke-static {v2, p1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    .line 244
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {v2, p1}, Lcn/nubia/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 250
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 251
    iput-boolean v1, p1, Lcn/nubia/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 252
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->isTab()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    .line 253
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 254
    :goto_1
    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v2, v3, v4}, Lcn/nubia/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 259
    :cond_5
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    .line 261
    :cond_6
    iget-object v2, p0, Lcn/nubia/gallery3d/app/StateManager;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2, v1}, Lcn/nubia/gallery3d/ui/GLRoot;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 262
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->onDestroy()V

    if-eqz v0, :cond_7

    .line 264
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ActivityState;->resume()V

    :cond_7
    :goto_2
    return-void

    .line 216
    :cond_8
    :goto_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 217
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    if-eqz v0, :cond_9

    .line 218
    iget v0, v0, Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v1, p0, Lcn/nubia/gallery3d/app/StateManager;->mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 220
    :cond_9
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 221
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.action.REVIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    .line 225
    :cond_a
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_5

    .line 222
    :cond_b
    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    const v1, 0x7f010029

    .line 223
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 227
    :goto_5
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "finish is rejected, keep the last state"

    .line 228
    invoke-static {v2, p1}, Lcn/nubia/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-string p1, "no more state, finish activity"

    .line 231
    invoke-static {v2, p1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getResumeFlag()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mResumeFlag:Z

    return v0
.end method

.method public getSpecifiedState(Ljava/lang/Class;)Lcn/nubia/gallery3d/app/StateManager$StateEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/gallery3d/app/ActivityState;",
            ">;)",
            "Lcn/nubia/gallery3d/app/StateManager$StateEntry;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 378
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 379
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    .line 380
    iget-object v2, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    if-eqz v2, :cond_1

    .line 381
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    iget-object p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getStateCount()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getTopState()Lcn/nubia/gallery3d/app/ActivityState;
    .locals 1

    .line 366
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 370
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasStateClass(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/gallery3d/app/ActivityState;",
            ">;)Z"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    .line 358
    iget-object v1, v1, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public itemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/ActivityState;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 175
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_2

    .line 176
    iget-object p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    .line 177
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public notifyActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    .line 144
    iget-object v1, v1, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/app/ActivityState;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/app/ActivityState;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/app/ActivityState;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    .line 157
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ActivityState;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    :cond_1
    return-void
.end method

.method public restoreFromState(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "StateManager"

    const-string v1, "restoreFromState"

    .line 315
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "activity-state"

    .line 316
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 317
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 318
    check-cast v3, Landroid/os/Bundle;

    const-string v4, "class"

    .line 320
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v5, "data"

    .line 322
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "bundle"

    .line 323
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 327
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreFromState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    iget-object v6, p0, Lcn/nubia/gallery3d/app/StateManager;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-virtual {v4, v6, v5}, Lcn/nubia/gallery3d/app/ActivityState;->initialize(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Bundle;)V

    .line 333
    invoke-virtual {v4, v5, v3}, Lcn/nubia/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 334
    iget-object v3, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v6, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v6, v5, v4}, Lcn/nubia/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcn/nubia/gallery3d/app/ActivityState;)V

    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    .line 151
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ActivityState;->resume()V

    :cond_1
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "StateManager"

    const-string v1, "saveState"

    .line 339
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    .line 343
    iget-object v2, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    .line 344
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 345
    iget-object v6, v4, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "class"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 346
    iget-object v6, v4, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    const-string v7, "data"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 347
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 348
    iget-object v7, v4, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-virtual {v7, v6}, Lcn/nubia/gallery3d/app/ActivityState;->onSaveState(Landroid/os/Bundle;)V

    const-string v7, "bundle"

    .line 349
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v4, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v3, 0x1

    .line 351
    aput-object v5, v1, v3

    move v3, v4

    goto :goto_0

    :cond_0
    const-string v0, "activity-state"

    .line 353
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public setResumeFlag(Z)V
    .locals 0

    .line 400
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mResumeFlag:Z

    return-void
.end method

.method public startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iget-object v1, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, p1, v3}, Lcn/nubia/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 65
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    .line 67
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/app/ActivityState;->initialize(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Bundle;)V

    .line 69
    iget-object p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v1, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v1, p2, v0}, Lcn/nubia/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcn/nubia/gallery3d/app/ActivityState;)V

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 70
    invoke-virtual {v0, p2, p1}, Lcn/nubia/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 71
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ActivityState;->resume()V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 59
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/gallery3d/app/ActivityState;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStateForResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    iget-object v1, p0, Lcn/nubia/gallery3d/app/StateManager;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-virtual {v0, v1, p3}, Lcn/nubia/gallery3d/app/ActivityState;->initialize(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Bundle;)V

    .line 116
    new-instance v1, Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    invoke-direct {v1}, Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;-><init>()V

    iput-object v1, v0, Lcn/nubia/gallery3d/app/ActivityState;->mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    .line 117
    iget-object v1, v0, Lcn/nubia/gallery3d/app/ActivityState;->mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    iput p2, v1, Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    .line 119
    iget-object p2, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 120
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object p2

    .line 121
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p2, v1, p1, v2}, Lcn/nubia/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 123
    iget-object p1, v0, Lcn/nubia/gallery3d/app/ActivityState;->mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    iput-object p1, p2, Lcn/nubia/gallery3d/app/ActivityState;->mReceivedResults:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    .line 124
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, v0, Lcn/nubia/gallery3d/app/ActivityState;->mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    iput-object p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    .line 129
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance p2, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    invoke-direct {p2, p3, v0}, Lcn/nubia/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcn/nubia/gallery3d/app/ActivityState;)V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 130
    invoke-virtual {v0, p3, p1}, Lcn/nubia/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 131
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ActivityState;->resume()V

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 113
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public switchState(Lcn/nubia/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/app/ActivityState;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StateManager"

    invoke-static {v2, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    if-eq p1, v0, :cond_1

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    .line 282
    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-static {v2, p1}, Lcn/nubia/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v0, p2, v1}, Lcn/nubia/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 289
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    .line 290
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->onDestroy()V

    .line 295
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    iget-object p2, p0, Lcn/nubia/gallery3d/app/StateManager;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-virtual {p1, p2, p3}, Lcn/nubia/gallery3d/app/ActivityState;->initialize(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Bundle;)V

    .line 300
    iget-object p2, p0, Lcn/nubia/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v0, p3, p1}, Lcn/nubia/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcn/nubia/gallery3d/app/ActivityState;)V

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 301
    invoke-virtual {p1, p3, p2}, Lcn/nubia/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 302
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->resume()V

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 297
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_4
    :goto_0
    const-string p1, "The Stack is null or empty"

    .line 277
    invoke-static {v2, p1}, Lcn/nubia/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
