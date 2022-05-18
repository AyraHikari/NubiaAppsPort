.class public final Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
.super Ljava/lang/Object;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectorySearchParams"
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public constraint:Ljava/lang/CharSequence;

.field public directoryId:J

.field public directoryType:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public filter:Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
