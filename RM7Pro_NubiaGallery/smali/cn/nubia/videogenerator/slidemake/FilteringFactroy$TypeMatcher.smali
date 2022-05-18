.class Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;
.super Ljava/lang/Object;
.source "FilteringFactroy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/FilteringFactroy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeMatcher"
.end annotation


# instance fields
.field private mKeyToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->mTypes:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->mKeyToName:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/slidemake/FilteringFactroy$1;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->mTypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->mKeyToName:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public matchClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->mTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public matchName(Ljava/lang/String;)I
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/FilteringFactroy$TypeMatcher;->mKeyToName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
