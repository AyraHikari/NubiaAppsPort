.class public Landroid/support/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# static fields
.field private static final CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 44
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "expectedType"    # Ljava/lang/Class;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v4, 0x0

    const-string v5, "class"

    invoke-interface {p1, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "className":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 195
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tag must have a \'class\' attribute"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    :cond_0
    :try_start_0
    sget-object v5, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :try_start_1
    sget-object v4, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 201
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v2, :cond_1

    .line 203
    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 204
    invoke-virtual {v4, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 205
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 206
    sget-object v4, Landroid/support/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 207
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 208
    sget-object v4, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object p1, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 213
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not instantiate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Landroid/support/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 119
    .local v2, "transition":Landroid/support/transition/Transition;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 121
    .local v0, "depth":I
    instance-of v5, p3, Landroid/support/transition/TransitionSet;

    if-eqz v5, :cond_3

    move-object v5, p3

    check-cast v5, Landroid/support/transition/TransitionSet;

    move-object v3, v5

    .line 124
    .local v3, "transitionSet":Landroid/support/transition/TransitionSet;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_17

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_17

    .line 127
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 131
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "name":Ljava/lang/String;
    const-string v5, "fade"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 133
    new-instance v2, Landroid/support/transition/Fade;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    .restart local v2    # "transition":Landroid/support/transition/Transition;
    :goto_1
    if-eqz v2, :cond_0

    .line 176
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v5

    if-nez v5, :cond_2

    .line 177
    invoke-direct {p0, p1, p2, v2}, Landroid/support/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;

    .line 179
    :cond_2
    if-eqz v3, :cond_16

    .line 180
    invoke-virtual {v3, v2}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 181
    const/4 v2, 0x0

    goto :goto_0

    .line 121
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "transitionSet":Landroid/support/transition/TransitionSet;
    .end local v4    # "type":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 134
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "transitionSet":Landroid/support/transition/TransitionSet;
    .restart local v4    # "type":I
    :cond_4
    const-string v5, "changeBounds"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 135
    new-instance v2, Landroid/support/transition/ChangeBounds;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_1

    .line 136
    :cond_5
    const-string v5, "slide"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 137
    new-instance v2, Landroid/support/transition/Slide;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_1

    .line 138
    :cond_6
    const-string v5, "explode"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 139
    new-instance v2, Landroid/support/transition/Explode;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_1

    .line 140
    :cond_7
    const-string v5, "changeImageTransform"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 141
    new-instance v2, Landroid/support/transition/ChangeImageTransform;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_1

    .line 142
    :cond_8
    const-string v5, "changeTransform"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 143
    new-instance v2, Landroid/support/transition/ChangeTransform;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_1

    .line 144
    :cond_9
    const-string v5, "changeClipBounds"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 145
    new-instance v2, Landroid/support/transition/ChangeClipBounds;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_1

    .line 146
    :cond_a
    const-string v5, "autoTransition"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 147
    new-instance v2, Landroid/support/transition/AutoTransition;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto/16 :goto_1

    .line 148
    :cond_b
    const-string v5, "changeScroll"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 149
    new-instance v2, Landroid/support/transition/ChangeScroll;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto/16 :goto_1

    .line 150
    :cond_c
    const-string v5, "transitionSet"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 151
    new-instance v2, Landroid/support/transition/TransitionSet;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto/16 :goto_1

    .line 152
    :cond_d
    const-string v5, "transition"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 153
    const-class v5, Landroid/support/transition/Transition;

    const-string v6, "transition"

    invoke-direct {p0, p2, v5, v6}, Landroid/support/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "transition":Landroid/support/transition/Transition;
    check-cast v2, Landroid/support/transition/Transition;

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto/16 :goto_1

    .line 154
    :cond_e
    const-string v5, "targets"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)V

    goto/16 :goto_1

    .line 156
    :cond_f
    const-string v5, "arcMotion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 157
    if-nez p3, :cond_10

    .line 158
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid use of arcMotion element"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_10
    new-instance v5, Landroid/support/transition/ArcMotion;

    iget-object v6, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/support/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v5}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    goto/16 :goto_1

    .line 161
    :cond_11
    const-string v5, "pathMotion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 162
    if-nez p3, :cond_12

    .line 163
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid use of pathMotion element"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 165
    :cond_12
    const-class v5, Landroid/support/transition/PathMotion;

    const-string v6, "pathMotion"

    invoke-direct {p0, p2, v5, v6}, Landroid/support/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/PathMotion;

    invoke-virtual {p3, v5}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    goto/16 :goto_1

    .line 167
    :cond_13
    const-string v5, "patternPathMotion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 168
    if-nez p3, :cond_14

    .line 169
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid use of patternPathMotion element"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_14
    new-instance v5, Landroid/support/transition/PatternPathMotion;

    iget-object v6, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/support/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v5}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    goto/16 :goto_1

    .line 173
    :cond_15
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown scene name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 182
    :cond_16
    if-eqz p3, :cond_0

    .line 183
    new-instance v5, Landroid/view/InflateException;

    const-string v6, "Could not add transition to another transition."

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    .end local v1    # "name":Ljava/lang/String;
    :cond_17
    return-object v2
.end method

.method private createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "sceneRoot"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 285
    .local v0, "depth":I
    const/4 v2, 0x0

    .line 287
    .local v2, "transitionManager":Landroid/support/transition/TransitionManager;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 290
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 294
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "name":Ljava/lang/String;
    const-string v4, "transitionManager"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    new-instance v2, Landroid/support/transition/TransitionManager;

    .end local v2    # "transitionManager":Landroid/support/transition/TransitionManager;
    invoke-direct {v2}, Landroid/support/transition/TransitionManager;-><init>()V

    .restart local v2    # "transitionManager":Landroid/support/transition/TransitionManager;
    goto :goto_0

    .line 297
    :cond_2
    const-string v4, "transition"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 298
    invoke-direct {p0, p2, p1, p3, v2}, Landroid/support/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroid/support/transition/TransitionManager;)V

    goto :goto_0

    .line 300
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown scene name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 303
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public static from(Landroid/content/Context;)Landroid/support/transition/TransitionInflater;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v0, Landroid/support/transition/TransitionInflater;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "transition"    # Landroid/support/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 227
    .local v3, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_9

    :cond_1
    const/4 v9, 0x1

    if-eq v8, v9, :cond_9

    .line 230
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 234
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "name":Ljava/lang/String;
    const-string v9, "target"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 236
    iget-object v9, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/support/transition/Styleable;->TRANSITION_TARGET:[I

    invoke-virtual {v9, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 237
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v9, "targetId"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v0, p1, v9, v10, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    .line 240
    .local v5, "id":I
    if-eqz v5, :cond_3

    .line 241
    invoke-virtual {p3, v5}, Landroid/support/transition/Transition;->addTarget(I)Landroid/support/transition/Transition;

    .line 268
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 242
    :cond_3
    const-string v9, "excludeId"

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v0, p1, v9, v10, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_4

    .line 244
    const/4 v9, 0x1

    invoke-virtual {p3, v5, v9}, Landroid/support/transition/Transition;->excludeTarget(IZ)Landroid/support/transition/Transition;

    goto :goto_1

    .line 245
    :cond_4
    const-string v9, "targetName"

    const/4 v10, 0x4

    invoke-static {v0, p1, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .local v7, "transitionName":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 247
    invoke-virtual {p3, v7}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    goto :goto_1

    .line 248
    :cond_5
    const-string v9, "excludeName"

    const/4 v10, 0x5

    invoke-static {v0, p1, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 250
    const/4 v9, 0x1

    invoke-virtual {p3, v7, v9}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;

    goto :goto_1

    .line 252
    :cond_6
    const-string v9, "excludeClass"

    const/4 v10, 0x3

    invoke-static {v0, p1, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 256
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 257
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v9, 0x1

    invoke-virtual {p3, v2, v9}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 263
    .end local v2    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 264
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not create "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 258
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :cond_7
    :try_start_1
    const-string v9, "targetClass"

    const/4 v10, 0x0

    invoke-static {v0, p1, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 260
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 261
    .restart local v2    # "clazz":Ljava/lang/Class;
    invoke-virtual {p3, v2}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 270
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v5    # "id":I
    .end local v7    # "transitionName":Ljava/lang/String;
    :cond_8
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown scene name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 273
    .end local v6    # "name":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroid/support/transition/TransitionManager;)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p4, "transitionManager"    # Landroid/support/transition/TransitionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 309
    iget-object v8, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/support/transition/Styleable;->TRANSITION_MANAGER:[I

    invoke-virtual {v8, p1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 310
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v8, "transition"

    const/4 v9, 0x2

    invoke-static {v0, p2, v8, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    .line 312
    .local v6, "transitionId":I
    const-string v8, "fromScene"

    const/4 v9, 0x0

    invoke-static {v0, p2, v8, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 314
    .local v1, "fromId":I
    if-gez v1, :cond_0

    move-object v2, v7

    .line 316
    .local v2, "fromScene":Landroid/support/transition/Scene;
    :goto_0
    const-string v8, "toScene"

    const/4 v9, 0x1

    invoke-static {v0, p2, v8, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 318
    .local v3, "toId":I
    if-gez v3, :cond_1

    move-object v4, v7

    .line 320
    .local v4, "toScene":Landroid/support/transition/Scene;
    :goto_1
    if-ltz v6, :cond_3

    .line 321
    invoke-virtual {p0, v6}, Landroid/support/transition/TransitionInflater;->inflateTransition(I)Landroid/support/transition/Transition;

    move-result-object v5

    .line 322
    .local v5, "transition":Landroid/support/transition/Transition;
    if-eqz v5, :cond_3

    .line 323
    if-nez v4, :cond_2

    .line 324
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No toScene for transition ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 314
    .end local v2    # "fromScene":Landroid/support/transition/Scene;
    .end local v3    # "toId":I
    .end local v4    # "toScene":Landroid/support/transition/Scene;
    .end local v5    # "transition":Landroid/support/transition/Transition;
    :cond_0
    iget-object v8, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p3, v1, v8}, Landroid/support/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;

    move-result-object v2

    goto :goto_0

    .line 318
    .restart local v2    # "fromScene":Landroid/support/transition/Scene;
    .restart local v3    # "toId":I
    :cond_1
    iget-object v7, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p3, v3, v7}, Landroid/support/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;

    move-result-object v4

    goto :goto_1

    .line 326
    .restart local v4    # "toScene":Landroid/support/transition/Scene;
    .restart local v5    # "transition":Landroid/support/transition/Transition;
    :cond_2
    if-nez v2, :cond_4

    .line 327
    invoke-virtual {p4, v4, v5}, Landroid/support/transition/TransitionManager;->setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    .line 333
    .end local v5    # "transition":Landroid/support/transition/Transition;
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    return-void

    .line 329
    .restart local v5    # "transition":Landroid/support/transition/Transition;
    :cond_4
    invoke-virtual {p4, v2, v4, v5}, Landroid/support/transition/TransitionManager;->setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    goto :goto_2
.end method


# virtual methods
.method public inflateTransition(I)Landroid/support/transition/Transition;
    .locals 5
    .param p1, "resource"    # I

    .prologue
    .line 68
    iget-object v2, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 70
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/support/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 77
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2

    .line 73
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;
    .locals 5
    .param p1, "resource"    # I
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    iget-object v3, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 92
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Landroid/support/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 104
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v3

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v1, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "ex":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "ex":Landroid/view/InflateException;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3

    .line 97
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 100
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v1    # "ex":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 102
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
