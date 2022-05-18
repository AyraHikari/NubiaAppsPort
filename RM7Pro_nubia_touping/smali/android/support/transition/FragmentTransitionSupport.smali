.class public Landroid/support/transition/FragmentTransitionSupport;
.super Landroid/support/v4/app/FragmentTransitionImpl;
.source "FragmentTransitionSupport.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransitionImpl;-><init>()V

    return-void
.end method

.method private static hasSimpleTarget(Landroid/support/transition/Transition;)Z
    .locals 1
    .param p0, "transition"    # Landroid/support/transition/Transition;

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 290
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 291
    check-cast v0, Landroid/support/transition/Transition;

    .line 292
    .local v0, "transition":Landroid/support/transition/Transition;
    invoke-virtual {v0, p2}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 294
    .end local v0    # "transition":Landroid/support/transition/Transition;
    :cond_0
    return-void
.end method

.method public addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v6, p1

    check-cast v6, Landroid/support/transition/Transition;

    .line 99
    .local v6, "transition":Landroid/support/transition/Transition;
    if-nez v6, :cond_1

    .line 119
    :cond_0
    return-void

    .line 102
    :cond_1
    instance-of v7, v6, Landroid/support/transition/TransitionSet;

    if-eqz v7, :cond_2

    move-object v4, v6

    .line 103
    check-cast v4, Landroid/support/transition/TransitionSet;

    .line 104
    .local v4, "set":Landroid/support/transition/TransitionSet;
    invoke-virtual {v4}, Landroid/support/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 105
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 106
    invoke-virtual {v4, v1}, Landroid/support/transition/TransitionSet;->getTransitionAt(I)Landroid/support/transition/Transition;

    move-result-object v0

    .line 107
    .local v0, "child":Landroid/support/transition/Transition;
    invoke-virtual {p0, v0, p2}, Landroid/support/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "child":Landroid/support/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v4    # "set":Landroid/support/transition/TransitionSet;
    :cond_2
    invoke-static {v6}, Landroid/support/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroid/support/transition/Transition;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 110
    invoke-virtual {v6}, Landroid/support/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    .line 111
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v5}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 113
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 114
    .local v3, "numViews":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 115
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Ljava/lang/Object;

    .prologue
    .line 209
    check-cast p2, Landroid/support/transition/Transition;

    .end local p2    # "transition":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 210
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v0, p1, Landroid/support/transition/Transition;

    return v0
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "copy":Landroid/support/transition/Transition;
    if-eqz p1, :cond_0

    .line 49
    check-cast p1, Landroid/support/transition/Transition;

    .end local p1    # "transition":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    .line 51
    :cond_0
    return-object v0
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "enterTransitionObj"    # Ljava/lang/Object;
    .param p3, "sharedElementTransitionObj"    # Ljava/lang/Object;

    .prologue
    .line 181
    const/4 v3, 0x0

    .local v3, "staggered":Landroid/support/transition/Transition;
    move-object v1, p1

    .line 182
    check-cast v1, Landroid/support/transition/Transition;

    .local v1, "exitTransition":Landroid/support/transition/Transition;
    move-object v0, p2

    .line 183
    check-cast v0, Landroid/support/transition/Transition;

    .local v0, "enterTransition":Landroid/support/transition/Transition;
    move-object v2, p3

    .line 184
    check-cast v2, Landroid/support/transition/Transition;

    .line 185
    .local v2, "sharedElementTransition":Landroid/support/transition/Transition;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 186
    new-instance v5, Landroid/support/transition/TransitionSet;

    invoke-direct {v5}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 187
    invoke-virtual {v5, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v5

    .line 188
    invoke-virtual {v5, v0}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v5

    const/4 v6, 0x1

    .line 189
    invoke-virtual {v5, v6}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    move-result-object v3

    .line 195
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 196
    new-instance v4, Landroid/support/transition/TransitionSet;

    invoke-direct {v4}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 197
    .local v4, "together":Landroid/support/transition/TransitionSet;
    if-eqz v3, :cond_1

    .line 198
    invoke-virtual {v4, v3}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 200
    :cond_1
    invoke-virtual {v4, v2}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 203
    .end local v4    # "together":Landroid/support/transition/TransitionSet;
    :goto_1
    return-object v4

    .line 190
    :cond_2
    if-eqz v1, :cond_3

    .line 191
    move-object v3, v1

    goto :goto_0

    .line 192
    :cond_3
    if-eqz v0, :cond_0

    .line 193
    move-object v3, v0

    goto :goto_0

    :cond_4
    move-object v4, v3

    .line 203
    goto :goto_1
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "transition1"    # Ljava/lang/Object;
    .param p2, "transition2"    # Ljava/lang/Object;
    .param p3, "transition3"    # Ljava/lang/Object;

    .prologue
    .line 130
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 131
    .local v0, "transitionSet":Landroid/support/transition/TransitionSet;
    if-eqz p1, :cond_0

    .line 132
    check-cast p1, Landroid/support/transition/Transition;

    .end local p1    # "transition1":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 134
    :cond_0
    if-eqz p2, :cond_1

    .line 135
    check-cast p2, Landroid/support/transition/Transition;

    .end local p2    # "transition2":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 137
    :cond_1
    if-eqz p3, :cond_2

    .line 138
    check-cast p3, Landroid/support/transition/Transition;

    .end local p3    # "transition3":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 140
    :cond_2
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 298
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 299
    check-cast v0, Landroid/support/transition/Transition;

    .line 300
    .local v0, "transition":Landroid/support/transition/Transition;
    invoke-virtual {v0, p2}, Landroid/support/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 302
    .end local v0    # "transition":Landroid/support/transition/Transition;
    :cond_0
    return-void
.end method

.method public replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "oldTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "newTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v6, p1

    check-cast v6, Landroid/support/transition/Transition;

    .line 265
    .local v6, "transition":Landroid/support/transition/Transition;
    instance-of v7, v6, Landroid/support/transition/TransitionSet;

    if-eqz v7, :cond_0

    move-object v3, v6

    .line 266
    check-cast v3, Landroid/support/transition/TransitionSet;

    .line 267
    .local v3, "set":Landroid/support/transition/TransitionSet;
    invoke-virtual {v3}, Landroid/support/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 268
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 269
    invoke-virtual {v3, v1}, Landroid/support/transition/TransitionSet;->getTransitionAt(I)Landroid/support/transition/Transition;

    move-result-object v0

    .line 270
    .local v0, "child":Landroid/support/transition/Transition;
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "child":Landroid/support/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v3    # "set":Landroid/support/transition/TransitionSet;
    :cond_0
    invoke-static {v6}, Landroid/support/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroid/support/transition/Transition;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 273
    invoke-virtual {v6}, Landroid/support/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    .line 274
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 275
    invoke-interface {v5, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 277
    if-nez p3, :cond_1

    const/4 v4, 0x0

    .line 278
    .local v4, "targetCount":I
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v4, :cond_2

    .line 279
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 277
    .end local v1    # "i":I
    .end local v4    # "targetCount":I
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    .line 281
    .restart local v1    # "i":I
    .restart local v4    # "targetCount":I
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_3
    if-ltz v1, :cond_3

    .line 282
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/support/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 281
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 286
    .end local v1    # "i":I
    .end local v4    # "targetCount":I
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_3
    return-void
.end method

.method public scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "fragmentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 147
    .local v0, "exitTransition":Landroid/support/transition/Transition;
    new-instance v1, Landroid/support/transition/FragmentTransitionSupport$2;

    invoke-direct {v1, p0, p2, p3}, Landroid/support/transition/FragmentTransitionSupport$2;-><init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 174
    return-void
.end method

.method public scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "overallTransitionObj"    # Ljava/lang/Object;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p4, "exitTransition"    # Ljava/lang/Object;
    .param p6, "sharedElementTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v8, p1

    check-cast v8, Landroid/support/transition/Transition;

    .line 218
    .local v8, "overallTransition":Landroid/support/transition/Transition;
    new-instance v0, Landroid/support/transition/FragmentTransitionSupport$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/support/transition/FragmentTransitionSupport$3;-><init>(Landroid/support/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v0}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 248
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "epicenter"    # Landroid/graphics/Rect;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 307
    check-cast v0, Landroid/support/transition/Transition;

    .line 308
    .local v0, "transition":Landroid/support/transition/Transition;
    new-instance v1, Landroid/support/transition/FragmentTransitionSupport$4;

    invoke-direct {v1, p0, p2}, Landroid/support/transition/FragmentTransitionSupport$4;-><init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    .line 318
    .end local v0    # "transition":Landroid/support/transition/Transition;
    :cond_0
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 82
    if-eqz p2, :cond_0

    move-object v1, p1

    .line 83
    check-cast v1, Landroid/support/transition/Transition;

    .line 84
    .local v1, "transition":Landroid/support/transition/Transition;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 85
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v0}, Landroid/support/transition/FragmentTransitionSupport;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 87
    new-instance v2, Landroid/support/transition/FragmentTransitionSupport$1;

    invoke-direct {v2, p0, v0}, Landroid/support/transition/FragmentTransitionSupport$1;-><init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    .line 94
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    .end local v1    # "transition":Landroid/support/transition/Transition;
    :cond_0
    return-void
.end method

.method public setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "sharedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v2, p1

    check-cast v2, Landroid/support/transition/TransitionSet;

    .line 68
    .local v2, "transition":Landroid/support/transition/TransitionSet;
    invoke-virtual {v2}, Landroid/support/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v4

    .line 69
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 70
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 71
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 72
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 73
    .local v3, "view":Landroid/view/View;
    invoke-static {v4, v3}, Landroid/support/transition/FragmentTransitionSupport;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0, v2, p3}, Landroid/support/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 78
    return-void
.end method

.method public swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "sharedElementTransitionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/TransitionSet;

    .line 254
    .local v0, "sharedElementTransition":Landroid/support/transition/TransitionSet;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 256
    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 259
    :cond_0
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 61
    .end local p1    # "transition":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 59
    .restart local p1    # "transition":Ljava/lang/Object;
    :cond_0
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 60
    .local v0, "transitionSet":Landroid/support/transition/TransitionSet;
    check-cast p1, Landroid/support/transition/Transition;

    .end local p1    # "transition":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    goto :goto_0
.end method
