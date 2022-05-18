.class public Lcn/nubia/improve/slideshow/effects/FilteringFactroy;
.super Ljava/lang/Object;
.source "FilteringFactroy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;
    }
.end annotation


# static fields
.field public static final CUBE:Ljava/lang/String; = "Cube"

.field public static final FADEOUT:Ljava/lang/String; = "FadeOut"

.field public static final FLOW:Ljava/lang/String; = "Flow"

.field public static final STACK:Ljava/lang/String; = "Stack"

.field public static final TURN:Ljava/lang/String; = "Turn"

.field private static mTypeMatcher:Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BuildFiltering()V
    .locals 4

    .line 17
    sget-object v0, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->mTypeMatcher:Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;-><init>(Lcn/nubia/improve/slideshow/effects/FilteringFactroy$1;)V

    sput-object v0, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->mTypeMatcher:Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;

    .line 19
    const-class v1, Lcn/nubia/improve/slideshow/effects/FadeOutFiltering;

    const v2, 0x7f10021a

    const-string v3, "FadeOut"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;->add(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 20
    sget-object v0, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->mTypeMatcher:Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;

    const-class v1, Lcn/nubia/improve/slideshow/effects/FlowFiltering;

    const v2, 0x7f10021b

    const-string v3, "Flow"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;->add(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 21
    sget-object v0, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->mTypeMatcher:Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;

    const-class v1, Lcn/nubia/improve/slideshow/effects/CubeFiltering;

    const v2, 0x7f100219

    const-string v3, "Cube"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;->add(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 22
    sget-object v0, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->mTypeMatcher:Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;

    const-class v1, Lcn/nubia/improve/slideshow/effects/StackFiltering;

    const v2, 0x7f10021c

    const-string v3, "Stack"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;->add(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 23
    sget-object v0, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->mTypeMatcher:Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;

    const-class v1, Lcn/nubia/improve/slideshow/effects/TurnFiltering;

    const v2, 0x7f10021d

    const-string v3, "Turn"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;->add(Ljava/lang/String;Ljava/lang/Class;I)V

    :cond_0
    return-void
.end method

.method public static CreateFiltering(Ljava/lang/String;)Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;
    .locals 3

    .line 28
    invoke-static {}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->BuildFiltering()V

    .line 29
    sget-object v0, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->mTypeMatcher:Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;

    invoke-virtual {v0, p0}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;->matchClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    .line 32
    :try_start_0
    const-class p0, Lcn/nubia/improve/slideshow/effects/FadeOutFiltering;

    .line 34
    :cond_0
    const-class v0, Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    :catch_1
    return-object v0
.end method

.method public static FilteringUIName(Ljava/lang/String;)I
    .locals 1

    .line 48
    invoke-static {}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->BuildFiltering()V

    .line 49
    sget-object v0, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->mTypeMatcher:Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;

    invoke-virtual {v0, p0}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy$TypeMatcher;->matchName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
