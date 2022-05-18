.class public Lcn/nubia/gallery3d/data/PathMatcher;
.super Ljava/lang/Object;
.source "PathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/PathMatcher$Node;
    }
.end annotation


# static fields
.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private mRoot:Lcn/nubia/gallery3d/data/PathMatcher$Node;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lcn/nubia/gallery3d/data/PathMatcher$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher$Node;-><init>(Lcn/nubia/gallery3d/data/PathMatcher$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mRoot:Lcn/nubia/gallery3d/data/PathMatcher$Node;

    .line 29
    new-instance v0, Lcn/nubia/gallery3d/data/PathMatcher$Node;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher$Node;-><init>(Lcn/nubia/gallery3d/data/PathMatcher$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mRoot:Lcn/nubia/gallery3d/data/PathMatcher$Node;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 3

    .line 33
    invoke-static {p1}, Lcn/nubia/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mRoot:Lcn/nubia/gallery3d/data/PathMatcher$Node;

    const/4 v1, 0x0

    .line 35
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 36
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/PathMatcher$Node;->addChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/PathMatcher$Node;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0, p2}, Lcn/nubia/gallery3d/data/PathMatcher$Node;->setKind(I)V

    return-void
.end method

.method public getDoubleVar(I)D
    .locals 2

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getIntVar(I)I
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLongVar(I)J
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVar(I)Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public match(Lcn/nubia/gallery3d/data/Path;)I
    .locals 4

    .line 42
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object v0, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mRoot:Lcn/nubia/gallery3d/data/PathMatcher$Node;

    const/4 v1, 0x0

    .line 45
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 46
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/PathMatcher$Node;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/PathMatcher$Node;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "*"

    .line 48
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/PathMatcher$Node;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/PathMatcher$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v2, p0, Lcn/nubia/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    move-object v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/PathMatcher$Node;->getKind()I

    move-result p1

    return p1
.end method
