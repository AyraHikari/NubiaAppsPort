.class public Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/SelectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OperaEntry"
.end annotation


# instance fields
.field private mCount:I

.field private mOperation:J

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/SelectionManager;JI)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;->this$0:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-wide p2, p0, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;->mOperation:J

    .line 500
    iput p4, p0, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;->mCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 508
    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;->mCount:I

    return v0
.end method

.method public getOperation()J
    .locals 2

    .line 504
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;->mOperation:J

    return-wide v0
.end method
