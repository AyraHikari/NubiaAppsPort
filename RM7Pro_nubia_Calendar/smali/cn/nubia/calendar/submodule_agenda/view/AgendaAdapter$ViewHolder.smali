.class public Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# static fields
.field public static final ACCEPTED_RESPONSE:I = 0x2

.field public static final DECLINED_RESPONSE:I = 0x0

.field public static final TENTATIVE_RESPONSE:I = 0x1


# instance fields
.field allDay:Z

.field bottomLine:Landroid/view/View;

.field checkbox:Landroid/widget/CheckBox;

.field colorChip:Landroid/widget/ImageView;

.field date:Landroid/widget/TextView;

.field grayed:Z

.field instanceId:J

.field julianDay:I

.field selectedMarker:Landroid/view/View;

.field startTimeMilli:J

.field textContainer:Landroid/widget/LinearLayout;

.field title:Landroid/widget/TextView;

.field topLine:Landroid/view/View;

.field week:Landroid/widget/TextView;

.field when:Landroid/widget/TextView;

.field where:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
