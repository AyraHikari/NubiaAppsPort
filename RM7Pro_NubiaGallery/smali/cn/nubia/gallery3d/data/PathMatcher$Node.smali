.class Lcn/nubia/gallery3d/data/PathMatcher$Node;
.super Ljava/lang/Object;
.source "PathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/PathMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private mKind:I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/gallery3d/data/PathMatcher$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcn/nubia/gallery3d/data/PathMatcher$Node;->mKind:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/data/PathMatcher$1;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/PathMatcher$Node;-><init>()V

    return-void
.end method


# virtual methods
.method addChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/PathMatcher$Node;
    .locals 2

    .line 81
    iget-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/PathMatcher$Node;

    if-eqz v0, :cond_1

    return-object v0

    .line 88
    :cond_1
    :goto_0
    new-instance v0, Lcn/nubia/gallery3d/data/PathMatcher$Node;

    invoke-direct {v0}, Lcn/nubia/gallery3d/data/PathMatcher$Node;-><init>()V

    .line 89
    iget-object v1, p0, Lcn/nubia/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/PathMatcher$Node;
    .locals 1

    .line 94
    iget-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 95
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/PathMatcher$Node;

    return-object p1
.end method

.method getKind()I
    .locals 1

    .line 103
    iget v0, p0, Lcn/nubia/gallery3d/data/PathMatcher$Node;->mKind:I

    return v0
.end method

.method setKind(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcn/nubia/gallery3d/data/PathMatcher$Node;->mKind:I

    return-void
.end method
