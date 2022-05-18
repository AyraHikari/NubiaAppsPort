.class public Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterViewCompat.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 417
    iput p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$AdapterContextMenuInfo;->position:I

    .line 418
    iput-wide p3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$AdapterContextMenuInfo;->id:J

    .line 419
    return-void
.end method
