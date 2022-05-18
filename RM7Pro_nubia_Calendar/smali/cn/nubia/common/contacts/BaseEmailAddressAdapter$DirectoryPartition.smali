.class public final Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
.super Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;
.source "BaseEmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/common/contacts/BaseEmailAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectoryPartition"
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public constraint:Ljava/lang/CharSequence;

.field public directoryId:J

.field public directoryType:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public filter:Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

.field public loading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0, v0}, Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    .line 110
    return-void
.end method
