.class Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;
.super Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Scale"
.end annotation


# instance fields
.field mScale:F

.field final synthetic this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0, p1}, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    return-void
.end method
