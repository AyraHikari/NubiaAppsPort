.class public Lcn/nubia/videogenerator/slidemake/FilteringFactroy;
.super Ljava/lang/Object;
.source "FilteringFactroy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;
    }
.end annotation


# static fields
.field public static final CUBE:Ljava/lang/String; = "Cube"

.field public static final FADEOUT:Ljava/lang/String; = "FadeOut"

.field public static final FLOW:Ljava/lang/String; = "Flow"

.field public static final STACK:Ljava/lang/String; = "Stack"

.field public static final TURN:Ljava/lang/String; = "Turn"

.field private static mTypeMatcher:Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BuildFiltering()V
    .locals 4

    .line 21
    sget-object v0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->mTypeMatcher:Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;-><init>(Lcn/nubia/videogenerator/slidemake/FilteringFactroy$1;)V

    sput-object v0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->mTypeMatcher:Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;

    .line 23
    const-class v1, Lcn/nubia/videogenerator/slidemake/VideoFadeOutFiltering;

    const/4 v2, 0x0

    const-string v3, "FadeOut"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->add(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 24
    sget-object v0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->mTypeMatcher:Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;

    const-class v1, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;

    const/4 v2, 0x1

    const-string v3, "Flow"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->add(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 25
    sget-object v0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->mTypeMatcher:Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;

    const-class v1, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;

    const/4 v2, 0x2

    const-string v3, "Cube"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->add(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 26
    sget-object v0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->mTypeMatcher:Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;

    const-class v1, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;

    const/4 v2, 0x3

    const-string v3, "Stack"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->add(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 27
    sget-object v0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->mTypeMatcher:Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;

    const-class v1, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;

    const/4 v2, 0x4

    const-string v3, "Turn"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->add(Ljava/lang/String;Ljava/lang/Class;I)V

    :cond_0
    return-void
.end method

.method public static CreateFiltering(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->BuildFiltering()V

    .line 53
    sget-object v0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->mTypeMatcher:Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;

    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->matchClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    .line 57
    :try_start_0
    const-class p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutFiltering;

    .line 59
    :cond_0
    const-class v0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v0
.end method

.method public static FilteringUIName(Ljava/lang/String;)I
    .locals 1

    .line 75
    invoke-static {}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->BuildFiltering()V

    .line 76
    sget-object v0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->mTypeMatcher:Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;

    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->matchName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
