.class public Lcn/nubia/improve/category/ThingsTag;
.super Ljava/lang/Object;
.source "ThingsTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/category/ThingsTag$Param;
    }
.end annotation


# static fields
.field public static final NO_TAG_ID:Ljava/lang/String; = "null"


# instance fields
.field private errorCode:I

.field private mParam:Lcn/nubia/improve/category/ThingsTag$Param;

.field private tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcn/nubia/improve/category/ThingsTag;->errorCode:I

    .line 15
    iput-object p2, p0, Lcn/nubia/improve/category/ThingsTag;->tags:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 56
    iget v0, p0, Lcn/nubia/improve/category/ThingsTag;->errorCode:I

    return v0
.end method

.method public getParam()Lcn/nubia/improve/category/ThingsTag$Param;
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/nubia/improve/category/ThingsTag;->mParam:Lcn/nubia/improve/category/ThingsTag$Param;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcn/nubia/improve/category/ThingsTag;->tags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setParam(Lcn/nubia/improve/category/ThingsTag$Param;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/nubia/improve/category/ThingsTag;->mParam:Lcn/nubia/improve/category/ThingsTag$Param;

    return-void
.end method
